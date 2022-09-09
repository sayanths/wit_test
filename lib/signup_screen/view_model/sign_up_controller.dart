import 'package:flutter/cupertino.dart';

class SignUpPageController extends ChangeNotifier {
  final signUpKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final conformPasswordController = TextEditingController();

  onSignUpButtonPress() {
    if (signUpKey.currentState!.validate()) {
      return;
    }
  }
}
