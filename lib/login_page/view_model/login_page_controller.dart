import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../home_page/view/home_page.dart';

String emailTemp = 'user';

class LoginController extends ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  final signUpemail = TextEditingController();
  final signUppassword = TextEditingController();

  late final FirebaseAuth auth;

// Future<String> signIn({required String email, required String password}) async {
//     try {
//       isLoading = true;
//       notifyListeners();
//       await auth.signInWithEmailAndPassword(
//         email: email.trim(),
//         password: password.trim(),
//       );

//       await sharedFunction(email);
//       isLoading = false;
//       notifyListeners();

//       return Future.value('');
//     } on FirebaseAuthException catch (ex) {
//       isLoading = false;
//       notifyListeners();
//       return Future.value(ex.message);
//     }
//   }

  Future<String> logIn(
      BuildContext context, String email, String password) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: signUppassword.text.trim(),
              password: signUppassword.text.trim())
          .then(
        (value) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
          notifyListeners();
        },
      );

      notifyListeners();

      return Future.value('');
    } on FirebaseAuthException catch (e) {
      return Future.value(e.message);
    }
  }

  String? validateName(String value) {
    if (value.isEmpty) {
      return 'name cannot Empty';
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.isEmpty) {
      return 'number cannot Empty';
    }
    return null;
  }

  onLoginButtonPress() {
    if (formKey.currentState!.validate()) {
      return;
    }
  }
//  sharedFunction(String email) async {
//    // emailFb = email;

//     final obj = await SharedPreferences.getInstance();
//     obj.setBool('login', true);
//     obj.setString('userName', email);
//   }

}
