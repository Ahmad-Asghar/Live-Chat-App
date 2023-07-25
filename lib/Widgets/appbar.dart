import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final Function() onBackButtonPress;
  const CustomAppBar(
      {Key? key, required this.title, required this.onBackButtonPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                onBackButtonPress();
              },
              icon: Icon(
                Icons.chevron_left_sharp,
                size: 9.w,
              )),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 6.w,
            ),
          ),
          Container(
            height: 2.h,
            width: 14.w,
          )
        ],
      ),
    );
  }
}
