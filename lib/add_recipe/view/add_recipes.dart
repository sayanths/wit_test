import 'package:flutter/material.dart';
import 'package:wit_test/core/colors.dart';
import 'package:wit_test/core/widgets.dart';

import 'widgets/recipe_widget.dart';

class AddRecipes extends StatelessWidget {
  const AddRecipes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 206, 229),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              height: size.height / 5,
              width: size.width / 1.1,
              decoration: BoxDecoration(
                  color: red,
                  // image: const DecorationImage(
                  //   image: NetworkImage("url"),
                  // ),
                  borderRadius: BorderRadius.circular(15)),
            ),
            AddPageTextFormFiled(
              size: size,
              title: '  Recipe name',
              height: size.height / 15,
              width: size.width / 1.2,
            ),
            height30,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const CustomTimingText(
                      title: "Prep time",
                    ),
                    AddPageTextFormFiled(
                      size: size,
                      title: '  0:00',
                      height: size.height / 15,
                      width: size.width / 4,
                    ),
                  ],
                ),
                Column(
                  children: [
                    const CustomTimingText(
                      title: "Cook time",
                    ),
                    AddPageTextFormFiled(
                      size: size,
                      title: '  0:00',
                      height: size.height / 15,
                      width: size.width / 4,
                    ),
                  ],
                ),
              ],
            ),
          
          ],
        ),
      ),
        floatingActionButton: FloatingActionButton(
        child: Icon(Icons.done),
        onPressed: () {
        
      },),
    );
  }
}
