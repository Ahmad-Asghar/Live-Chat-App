import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:livechat/Controller/pagecontroller.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Colors/colors.dart';
import '../Widgets/builders/pageviewbuilder.dart';
import 'getstarted.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "images/onboarding1.png",
                  ),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 7.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MaterialButton(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: AppColors.skipButton,
                      height: 4.6.h,
                      minWidth: 20.w,
                      onPressed: () {
                        Get.to(()=>const GetStarted());
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomPageViewBuilder(),
              SizedBox(
                height: 1.8.h,
              ),
              SmoothPageIndicator(
                controller: PagePositionController.pageController,
                count: PagePositionController.onBoardingImages.length,
                effect: ScrollingDotsEffect(
                  activeDotColor: Colors.white,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
