
import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../../../core/fonts.dart';

class CustomTimingText extends StatelessWidget {
  final String title;
  const CustomTimingText({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: gFont(color: black, fontWeight: FontWeight.w600),
    );
  }
}

class AddPageTextFormFiled extends StatelessWidget {
  final String title;
  final double height;
  final double width;
  const AddPageTextFormFiled({
    Key? key,
    required this.size,
    required this.title,
    required this.height,
    required this.width,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: title,
        ),
      ),
    );
  }
}
