import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomPointerContainer extends StatelessWidget {
  final Color backGroundColor;
  final IconData icon;
  final String text;
  const CustomPointerContainer({Key? key, required this.backGroundColor, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(

          color: backGroundColor,
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 2.w, vertical: 0.8.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                icon,
                size: 3.5.w,
                color: Colors.white,
              ),
              SizedBox(
                width: 1.w,
              ),
              Text(
                text,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
