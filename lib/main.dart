

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wit_test/add_recipe/view_model/add_recipe_controller.dart';
import 'package:wit_test/home_page/view/home_page.dart';
import 'package:wit_test/login_page/view/login_page.dart';


void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<HomePageController>(create: (context)=>HomePageController()),
    ],
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cooky',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const LoginPage(),
    );
  }
}
