import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:livechat/Colors/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Controller/textbuttonController.dart';

class CustomNewTextButton extends StatelessWidget {
  final String value;
  final String text;
  final Function() onPressFunction;
  const CustomNewTextButton(
      {Key? key,
      required this.text,
      required this.onPressFunction,
      required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextButton(
          onPressed: () {
            onPressFunction();
          },
          child: Text(
            text,
            style: TextStyle(
              fontSize: 2.5.h,
              color: NewPageControllers.currentButton.value == value
                  ? AppColors.theme2
                  : Colors.black,
            ),
          )),
    );
  }
}
