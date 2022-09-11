import 'package:flutter/material.dart';
import 'package:wit_test/add_recipe/view/addpage.dart';

import 'widget/gridview_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.food_bank),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const AddPage()));
            },
            child: const Text("Add Recipie"),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: GridView.builder(
            itemCount: 10,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 3, crossAxisSpacing: 3),
            itemBuilder: (ctx, index) {
              return GridViewWidget(size: size);
            }),
      ),
    );
  }
}
