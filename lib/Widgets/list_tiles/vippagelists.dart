import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomVIPPageListTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  const CustomVIPPageListTile(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 95,
          width: 140,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 5.w),
            child: Image(
              image: AssetImage(image),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 2.h,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 5.w, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 0.5.h,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.55,
              child: Text(
                subTitle,
                style: TextStyle(
                  fontSize: 4.5.w,
                ),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.55,
              child: const Divider(
                height: 0,
                thickness: 2,
              ),
            ),
          ],
        )
      ],
    );
  }
}
