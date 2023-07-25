import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Colors/colors.dart';

class CustomTextButtom extends StatelessWidget {
  final String text;
  final Function() onPressFunction;
  const CustomTextButtom({Key? key, required this.text, required this.onPressFunction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
              decoration: TextDecoration.underline,
              color: AppColors.theme2,
              fontSize: 4.4.w),
        ));
  }
}
