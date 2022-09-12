import 'dart:async';


import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wit_test/home_page/view/home_page.dart';
import 'package:wit_test/login_page/view/login_page.dart';
import '../../routes/routes.dart';

class SplashPov extends ChangeNotifier {
  SplashPov() {
    checkUserLogin();
  }

  void checkUserLogin() async {
    final obj = await SharedPreferences.getInstance();
    bool data = obj.getBool('userLoged') ?? false;
   Timer(
      const Duration(seconds: 2),
      () => data
          ? Routes.pushreplace(
              screen: const HomePage(),
            )
          : Routes.pushreplace(
              screen: const LoginPage(),
            ),
    );
  }
}
