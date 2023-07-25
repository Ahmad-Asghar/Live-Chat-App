import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:livechat/Colors/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../Controller/textcontrollers.dart';
class CustomRadioButton extends StatelessWidget {
  final String title;
  final String value;
  final Function() onChanged;
  const CustomRadioButton({Key? key, required this.title, required this.value, required this.onChanged}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Flexible(
      child: Obx(
            () => RadioListTile(
          activeColor: Colors.blue,
          title: Text(
            title,
            style: TextStyle(
                fontSize: 3.h,
                color: TextFieldControllers.gender == value
                    ? Colors.blue
                    : AppColors.theme1),
          ),
          value: value,
          onChanged: (value) {
            TextFieldControllers.setGender(value.toString());
          },
          groupValue: TextFieldControllers.gender.value,
        ),
      ),
    );
  }
}
