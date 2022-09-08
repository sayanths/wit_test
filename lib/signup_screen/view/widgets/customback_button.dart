import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../../../core/fonts.dart';
import '../../../routes/routes.dart';

class CustomBackButtonWithTitle extends StatelessWidget {
  final String title;
  const CustomBackButtonWithTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
            onTap: () => Routes.pop(), child: const Icon(Icons.arrow_back_ios)),
        Text(
          title,
          style: gFont(color: black, size: 30, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
