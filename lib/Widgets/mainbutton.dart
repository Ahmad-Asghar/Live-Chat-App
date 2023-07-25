import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MainButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;
  final Function() onPressFunction;
  const MainButton(
      {Key? key,
      required this.text,
      required this.textColor,
      required this.backgroundColor,
      required this.borderColor,
      required this.onPressFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    Padding(
      padding:  EdgeInsets.symmetric(horizontal: 5.w),
      child: Row(
        children: [
          Expanded(
              child: OutlinedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  side: MaterialStateProperty.all<BorderSide>(
                    BorderSide(
                      color: borderColor, // Border color
                      width: 1.5,
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all<Size>(
                    Size(double.infinity, 7.7.h),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                    backgroundColor,
                  ),
                ),
                onPressed: () {
                 onPressFunction(
                 );
                },
                child: Text(
                  text,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 4.3.w,
                  ),
                ),
              )
          ),
        ],
      ),
    );
  }
}
