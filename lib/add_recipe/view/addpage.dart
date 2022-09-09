import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:wit_test/add_recipe/view/add_increadents.dart';
import 'package:wit_test/add_recipe/view/add_recipes.dart';
import 'package:wit_test/add_recipe/view/add_steps.dart';
import 'package:wit_test/add_recipe/view_model/add_recipe_controller.dart';
import 'package:wit_test/core/colors.dart';

class AddPage extends StatelessWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  //  final addPagePov = Provider.of<AddPageController>(context, listen: false);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: yellow,
        appBar: AppBar(
          title: const Text("Recipe"),
          centerTitle: true,
          bottom: TabBar(
           // controller: addPagePov.tabController,
            tabs: const [
              Text("Recipe"),
              Text("Ingredients"),
              Text("Steps"),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: TabBarView(
                 // controller: addPagePov.tabController,
                  children: const [
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
