import 'package:flutter/cupertino.dart';

class LoginController extends ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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
}
