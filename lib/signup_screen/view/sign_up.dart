import 'package:flutter/material.dart';
import 'package:wit_test/core/widgets.dart';

import 'package:wit_test/login_page/view/widgets/textfield_widget.dart';

import '../../home_page/view/home_page.dart';
import 'widgets/customback_button.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
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
                  obsureText: false,
                  size: size,
                  title: ' Enter name',
                  icon: Icons.person,
                ),
                CustomTextField(
                  obsureText: false,
                  size: size,
                  title: ' Enter email',
                  icon: Icons.email,
                ),
                CustomTextField(
                  obsureText: true,
                  size: size,
                  title: ' Enter password',
                  icon: Icons.password,
                ),
                CustomTextField(
                  obsureText: true,
                  size: size,
                  title: ' Conform password',
                  icon: Icons.password,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                          (route) => false);
                    },
                    child: const Text("Sign up"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
