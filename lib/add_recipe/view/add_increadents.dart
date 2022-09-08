import 'package:flutter/material.dart';
import 'package:wit_test/add_recipe/view/widgets/recipe_widget.dart';

class AddIngredients extends StatelessWidget {
  const AddIngredients({Key? key}) : super(key: key);

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
                title: '  Name of items used',
                height: size.height / 12,
                width: size.width / 1.1),
            AddPageTextFormFiled(
              size: size,
              title: '  Quantity Used...',
              height: size.height / 2,
              width: size.width / 1.1,
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
