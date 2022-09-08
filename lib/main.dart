import 'package:flutter/material.dart';
import 'package:wit_test/login_page/view/login_page.dart';
import 'package:wit_test/provider/provder.dart';

void main() {
  runApp(Provider.provider());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wit',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}
