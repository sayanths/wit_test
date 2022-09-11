import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../home_page/view/home_page.dart';

class SignUpPageController extends ChangeNotifier {
  final signUpKey = GlobalKey<FormState>();
  final signUpname = TextEditingController();
  final signUpemail = TextEditingController();
  final signUppassword = TextEditingController();
  final signUpconformPassword = TextEditingController();

  final auth = FirebaseAuth.instance;

  Future<String> signUp(
      BuildContext context, String email, String password) async {
    String password1 = signUppassword.text.trim();
    String conformPassword = signUpconformPassword.text.trim();

    if (password1 != conformPassword) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Password Does not Match'),
        ),
      );
    } else {
      try {
        final msg = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: signUpemail.text.trim(),
                password: signUppassword.text.trim())
            .then(
          (value) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          },
        );
        log(msg.toString());

        await addDataBase(context, signUpemail.text);
        notifyListeners();
        return Future.value('');
      } on FirebaseAuthException catch (e) {
        return Future.value(e.message);
      }
    }
    return 'Make sure both are correct';
  }

  addDataBase(BuildContext context, String email) async {
    await FirebaseFirestore.instance.collection('userdata').add({
      'name': signUpname.text,
      'email': signUpemail.text,
      'password': signUppassword.text,
    });
  }

  void disPoseFunction(BuildContext context) {
    signUpemail.text = '';
    signUpname.text = '';
    signUppassword.text = '';
    signUpconformPassword.text = '';
  }

  onSignUpButtonPress() {
    if (signUpKey.currentState!.validate()) {
      return;
    }
  }
}
