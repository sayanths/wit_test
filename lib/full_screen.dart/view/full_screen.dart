import 'package:flutter/material.dart';
import 'package:wit_test/core/colors.dart';
import 'package:wit_test/core/fonts.dart';
import 'package:wit_test/core/widgets.dart';

import '../../add_recipe/view/widgets/image_container.dart';

class FullScreenView extends StatelessWidget {
  const FullScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 181, 210),
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                ImageContainer(size: size),
                const Text("Chicken Curry"),
              ],
            ),
            height30,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                PrepAndCookTime(
                  title: 'Prep Time',
                  time: '12:00',
                ),
                PrepAndCookTime(
                  title: 'Cook Time',
                  time: '30:00',
                ),
              ],
            ),
            height30,
            Container(
              height: size.height / 1.5,
              width: size.width,
              decoration: const BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: Column(
                children: const [
                  Text("Ingrediants"),
                  Text("Steps"),
                ],
              ),
            ),
            height10,
            Container(
              height: size.height / 6,
              width: size.width / 1.1,
              decoration: BoxDecoration(
                  color: red, borderRadius: BorderRadius.circular(20)),
            ),
          ],
        ),
      ),
    );
  }
}

class PrepAndCookTime extends StatelessWidget {
  final String title;
  final String time;
  const PrepAndCookTime({
    Key? key,
    required this.title,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text(
          title,
          style: gFont(color: black, size: 15, fontWeight: FontWeight.bold),
        ),
        height10,
        Text(time),
      ],
    );
  }
}
