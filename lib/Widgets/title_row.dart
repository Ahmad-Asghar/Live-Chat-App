import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Colors/colors.dart';

class CustomTitle extends StatelessWidget {
  final String text;
  const CustomTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 6.w),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: AppColors.theme2,
                borderRadius: BorderRadius.circular(10)
            ),
            height: 3.h,
            width: 2.w,
          ),
          SizedBox(width: 5.w,),
          Text(text,style: TextStyle(
              fontSize: 5.w,
              fontWeight: FontWeight.bold,
              color: AppColors.theme2
          ),)
        ],
      ),
    );
  }
}
