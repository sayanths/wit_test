import 'package:flutter/material.dart';
import 'package:wit_test/login_page/view/login_page.dart';
import 'package:wit_test/routes/routes.dart';

import 'login_page/view/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cooky',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const LoginPage(),
    );
  }
}
