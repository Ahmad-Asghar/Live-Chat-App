import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Followed extends StatelessWidget {
  const Followed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFDF56),
        onPressed: () {},
        child: Container(
          height: 56.0,
          width: 56.0,
          child: CircleAvatar(
            backgroundColor: Colors.yellow[400],
            backgroundImage: AssetImage("images/coin.png"),
          ),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(

decoration: BoxDecoration(
  
  image: DecorationImage(
    image: AssetImage("images/nofollower.png")
  )
),
                  height: 25.h,
                  width: 60.w,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
