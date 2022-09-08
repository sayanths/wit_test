import 'package:flutter/material.dart';
import 'package:wit_test/core/widgets.dart';
import 'package:wit_test/home_page/view/home_page.dart';
import 'package:wit_test/login_page/view/login_page.dart';
import 'package:wit_test/login_page/view/widgets/textfield_widget.dart';
import 'package:wit_test/routes/routes.dart';

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
                  size: size,
                  title: ' Enter name',
                  icon: Icons.person,
                ),
                CustomTextField(
                  size: size,
                  title: ' Enter email',
                  icon: Icons.email,
                ),
                CustomTextField(
                  size: size,
                  title: ' Enter password',
                  icon: Icons.password,
                ),
                CustomTextField(
                  size: size,
                  title: ' Conform password',
                  icon: Icons.password,
                ),
                // CustomElevatedButton(
                //   size: size,
                //   title: ' sign up',
                // ),
                ElevatedButton(
                    onPressed: () {
                      Routes.push(screen: HomePage());
                    },
                    child: Text("Sign up"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
