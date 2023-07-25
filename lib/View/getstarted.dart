import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:livechat/View/registration.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Colors/colors.dart';
import '../Widgets/mainbutton.dart';
import '../Widgets/textbutton.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "images/onboarding2.png",
                  ),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 25.h,
                child: Center(
                  child: Image(
                    image: AssetImage("images/livechat.png"),
                  ),
                ),
              ),
              SizedBox(
                height: 23.h,
              ),
              Container(
                child: Column(
                  children: [
                    MainButton(
                      text: 'Login',
                      textColor: AppColors.theme1,
                      backgroundColor: Colors.white,
                      borderColor: Colors.white,
                      onPressFunction: () {
                        print("Go to Registration");
                        Get.to(() => Registration());
                      },
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "By using our App you agree with our",
                          style:
                              TextStyle(
                                  color: Colors.white, fontSize: 4.4.w),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTextButtom(
                          text: 'Terms and Conditions',
                          onPressFunction: () {},
                        ),
                        Text(
                          "and",
                          style:
                              TextStyle(color: Colors.white, fontSize: 4.4.w),
                        ),
                        CustomTextButtom(
                          text: 'Privacy Policy',
                          onPressFunction: () {},
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
