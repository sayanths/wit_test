import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wit_test/core/colors.dart';

class AddSteps extends StatelessWidget {
  const AddSteps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 206, 229),
    );
  }
}
