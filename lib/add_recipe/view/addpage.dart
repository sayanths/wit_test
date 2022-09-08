import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wit_test/add_recipe/view/add_increadents.dart';
import 'package:wit_test/add_recipe/view/add_recipes.dart';
import 'package:wit_test/add_recipe/view/add_steps.dart';
import 'package:wit_test/core/colors.dart';

class AddPage extends StatelessWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: yellow,
        appBar: AppBar(
          title: const Text("Recipe"),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Text("Recipe"),
              Text("Ingredients"),
              Text("Steps"),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            children: const [
              Expanded(
                child: TabBarView(
                  children: [
                    AddRecipes(),
                    AddIngredients(),
                    AddSteps(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
