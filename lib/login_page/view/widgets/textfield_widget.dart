
import 'package:flutter/material.dart';

import '../../../core/colors.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final IconData icon;
  final TextEditingController? controller;

  const CustomTextField({
    Key? key,
    required this.size,
    required this.title,
    required this.icon,
    this.controller,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: size.height / 16,
              width: size.width / 8,
              color: red,
              child: Icon(
                icon,
                color: white,
              )),
          Container(
              height: size.height / 16,
              width: size.width / 1.5,
              decoration: const BoxDecoration(
                color: grey,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
              ),
              child: TextFormField(
                validator: (value) {
                  return null;
                },
                controller: controller,
                decoration:
                    InputDecoration(border: InputBorder.none, hintText: title),
              )),
        ],
      ),
    );
  }
}
