import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wit_test/core/colors.dart';
import 'package:wit_test/core/fonts.dart';
import 'package:wit_test/core/widgets.dart';

import '../../signup_screen/view/sign_up.dart';
import '../view_model/login_page_controller.dart';
import 'widgets/textfield_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginProvider = context.read<LoginController>();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  loginBg,
                ),
                fit: BoxFit.cover),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: size.height / 9,
                width: size.width,
                decoration: const BoxDecoration(
                  color: orange,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Center(
                    child: Text(
                  "Food Cooking",
                  style: gFont(
                      fontWeight: FontWeight.bold, letterSspacing: 2, size: 25),
                )),
              ),
              SizedBox(
                height: size.height / 10,
              ),
              Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: loginProvider.formKey,
                child: Column(
                  children: [
                    CustomTextField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter Valid Email';
                        }
                        return null;
                      },
                      obsureText: false,
                      size: size,
                      title: '  Enter email',
                      icon: Icons.person,
                    ),
                    CustomTextField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter Password';
                          }
                          return null;
                        },
                        obsureText: true,
                        size: size,
                        title: '  Enter Password',
                        icon: Icons.password),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account ",
                          style: gFont(color: black),
                        ),
                        height30,
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUpPage()));
                          },
                          child: Text(
                            " click here",
                            style: gFont(color: blue),
                          ),
                        )
                      ],
                    ),
                    height30,
                    ElevatedButton(
                        onPressed: () async {
                          loginProvider.onLoginButtonPress();
                         await  context.read<LoginController>().logIn(
                            context,
                            loginProvider.signUpemail.text.trim(),
                            loginProvider.signUppassword.text.trim());
                        },
                        child: const Text("login page"))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String title;
  final Function function;
  const CustomButton({
    Key? key,
    required this.size,
    required this.title,
    required this.function,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
