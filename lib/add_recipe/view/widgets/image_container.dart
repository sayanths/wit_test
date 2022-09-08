import 'package:flutter/material.dart';
import 'package:wit_test/core/colors.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      height: size.height / 6,
      width: size.width / 3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: red,
        // image: const DecorationImage(
        //   image: NetworkImage(
        //       "https://www.worldatlas.com/r/w1200/upload/72/b0/06/shutterstock-337714676.jpg"),
        // ),
      ),
    );
  }
}
