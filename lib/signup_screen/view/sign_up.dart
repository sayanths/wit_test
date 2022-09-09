import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wit_test/core/widgets.dart';

import 'package:wit_test/login_page/view/widgets/textfield_widget.dart';

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
                    controller: signUpController.nameController,
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
                    controller: signUpController.emailController,
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
                    controller: signUpController.passwordController,
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
                    controller: signUpController.conformPasswordController,
                    validator: (value) {
                      if (value!.isEmpty) {
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
                      onPressed: () {
                        signUpController.onSignUpButtonPress();
                        // Navigator.pushAndRemoveUntil(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const HomePage()),
                        //     (route) => false);
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
