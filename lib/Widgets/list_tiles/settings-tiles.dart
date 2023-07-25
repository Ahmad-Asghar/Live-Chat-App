import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomSettingsTiles extends StatelessWidget {
  final String title;
  final Widget trailingWidget;

  const CustomSettingsTiles({Key? key, required this.title,required this.trailingWidget,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          trailing: trailingWidget,
          title: Text(
            title,
            style: TextStyle(fontSize: 4.5.w),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: Divider(
            height: 0,
            thickness: 2,
          ),
        ),
      ],
    );
  }
}
