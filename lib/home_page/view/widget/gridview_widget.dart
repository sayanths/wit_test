import 'package:flutter/material.dart';
import 'package:wit_test/full_screen.dart/view/full_screen.dart';
import 'package:wit_test/routes/routes.dart';

import '../../../core/colors.dart';
import '../../../core/fonts.dart';
import '../../../core/widgets.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: red,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const FullScreenView()));
        },
        child: Column(
          children: [
            Container(
              height: size.height / 6.8,
              decoration: const BoxDecoration(
                color: yellow,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://www.worldatlas.com/r/w1200/upload/72/b0/06/shutterstock-337714676.jpg"),
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
            ),
            height10,
            height10,
            Text(
              "Item Name",
              style: gFont(fontWeight: FontWeight.bold),
            ),
            height10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "prep",
                  style: gFont(fontWeight: FontWeight.bold),
                ),
                Text(
                  "0:00",
                  style: gFont(),
                ),
                Text(
                  "cook",
                  style: gFont(fontWeight: FontWeight.bold),
                ),
                Text(
                  "0:00",
                  style: gFont(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
