import 'package:flutter/material.dart';
import 'package:wit_test/add_recipe/view/widgets/recipe_widget.dart';
import 'package:wit_test/core/colors.dart';

class AddSteps extends StatelessWidget {
  const AddSteps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 206, 229),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AddPageTextFormFiled(
              size: size,
              title: '   No of steps',
              height: size.height / 15,
              width: size.width,
            ),
            AddPageTextFormFiled(
              size: size,
              title: '   Instructions..',
              height: size.height / 3,
              width: size.width,
            ),
            AddPageTextFormFiled(
              size: size,
              title: '   Additional tips..',
              height: size.height / 5,
              width: size.width,
            ),
            Container(
              margin: const EdgeInsets.all(20),
              height: size.height / 6,
              width: size.width / 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: red,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text("Done"),
        onPressed: () {},
      ),
    );
  }
}
