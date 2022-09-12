import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wit_test/add_recipe/view_model/add_recipe_controller.dart';
import 'package:wit_test/login_page/view/login_page.dart';
import 'package:wit_test/login_page/view_model/login_page_controller.dart';
import 'package:wit_test/routes/routes.dart';
import 'package:wit_test/signup_screen/view_model/sign_up_controller.dart';
import 'package:wit_test/splash_screen/view/splash_screen.dart';
import 'package:wit_test/splash_screen/view_model/splash_screen_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<AddPageController>(
          create: (context) => AddPageController(),
        ),
        ChangeNotifierProvider<LoginController>(
          create: (context) => LoginController(),
        ),
        ChangeNotifierProvider<AddPageController>(
          create: (context) => AddPageController(),
        ),
          ChangeNotifierProvider<SignUpPageController>(
          create: (context) => SignUpPageController(),
        ),
           ChangeNotifierProvider<SplashPov>(
          create: (context) => SplashPov(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Routes.navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Cooky',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const SplashScreen(),
    );
  }
}
