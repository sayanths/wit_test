import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wit_test/core/colors.dart';

class AddRecipe extends StatelessWidget {
  const AddRecipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recipe"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children:  [
            
          ],
        ),
      ),
    );
  }
}
