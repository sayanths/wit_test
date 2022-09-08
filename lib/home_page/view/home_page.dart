import 'package:flutter/material.dart';
import 'package:wit_test/add_recipe/view/addpage.dart';
import 'package:wit_test/routes/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => AddPage()));
            },
            child: const Text("Add Recipie"),
          ),
        ],
      ),
    );
  }
}
