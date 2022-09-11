import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wit_test/core/widgets.dart';

import 'package:wit_test/login_page/view/widgets/textfield_widget.dart';

import '../../home_page/view/home_page.dart';
import '../view_model/sign_up_controller.dart';
import 'widgets/customback_button.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final signUpController = context.read<SignUpPageController>();
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: signUpController.signUpKey,
          child: Column(
            children: [
              height30,
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomBackButtonWithTitle(
                  title: "Create an Account",
                ),
              ),
              height50,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextField(
                    controller: signUpController.signUpname,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Valid name';
                      }
                      return null;
                    },
                    obsureText: false,
                    size: size,
                    title: ' Enter name',
                    icon: Icons.person,
                  ),
                  CustomTextField(
                    controller: signUpController.signUpemail,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Valid email';
                      }
                      return null;
                    },
                    obsureText: false,
                    size: size,
                    title: ' Enter email',
                    icon: Icons.email,
                  ),
                  CustomTextField(
                    controller: signUpController.signUppassword,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Valid password';
                      }
                      return null;
                    },
                    obsureText: true,
                    size: size,
                    title: ' Enter password',
                    icon: Icons.password,
                  ),
                  CustomTextField(
                    controller: signUpController.signUpconformPassword,
                    validator: (value) {
                      if (value != signUpController.signUppassword.text) {
                        return 'enter matching password';
                      }
                      return null;
                    },
                    obsureText: true,
                    size: size,
                    title: ' Conform password',
                    icon: Icons.password,
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        signUpController.onSignUpButtonPress();
                        await context.read<SignUpPageController>().signUp(
                            context,
                            signUpController.signUpemail.text.trim(),
                            signUpController.signUppassword.text.trim());
                        //     .then((value) {
                        //  if(value!=null){
                        //        Navigator.pushReplacement(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => HomePage()));
                        //  }
                        //     });
                      },
                      child: const Text("Sign up"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
