import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomRegistrationField extends StatelessWidget {
  final String hintText;
  final bool enable;
  final Function() onPressedFunction;
  final Function() onTextFieldTap;
  final TextEditingController controller;
  final bool readOnly;
  const CustomRegistrationField({Key? key, required this.hintText, required this.enable, required this.onPressedFunction, required this.controller, required this.readOnly, required this.onTextFieldTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 7.h,
              color: Colors.grey[200],
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 7.w),
                  child: TextField(
                    onTap: (){
                      onTextFieldTap();
                    },
                    readOnly: readOnly,
                    controller: controller,
                    decoration: InputDecoration(
                        suffixIcon:
                            enable==true?
                        InkWell(

                            onTap: (){
                              onPressedFunction();
                            },
                            child: Icon(Icons.chevron_right_outlined,color: Colors.black,)):Icon(Icons.call,color: Colors.grey[200],),
                        hintText: hintText,
                        hintStyle: TextStyle(color: Colors.black),
                        border: InputBorder.none),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
