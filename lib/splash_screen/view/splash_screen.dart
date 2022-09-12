import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SplashPov>(
      builder: (context, value, _) => Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  "https://img.freepik.com/premium-vector/cooking-logo-design-vector_18099-1490.jpg?w=2000",
                ),
                fit: BoxFit.fitHeight),
          ),
        ),
      ),
    );
  }
}
