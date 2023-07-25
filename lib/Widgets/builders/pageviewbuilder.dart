import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:livechat/Colors/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Controller/pagecontroller.dart';
import '../../View/getstarted.dart';

class CustomPageViewBuilder extends StatelessWidget {
  const CustomPageViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.76,
      child: PageView.builder(
        controller: PagePositionController.pageController,
        itemCount: PagePositionController.onBoardingImages.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 10.w), // Use a fixed padding value
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      IntrinsicWidth(
                        child: Column(
                          children: [
                            Text(
                              PagePositionController.onBoardingText[index],
                              style: TextStyle(
                                fontSize: 10.w,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Divider(
                              color: Colors.white,
                              thickness: 4,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            PagePositionController.onBoardingImages[index] ==
                                    "images/page2.png"
                                ? Column(
                                  children: [
                                    MaterialButton(
                              shape: RoundedRectangleBorder(

                                    borderRadius: BorderRadius.circular(25),
                                    side: BorderSide(color: AppColors.theme2,width: 3),
                              ),
                              height:7.h,
                              minWidth: 35.w,
                              color:Colors.white,
                                        onPressed: () {
                                          Get.to(()=>const GetStarted());
                                        },
                                        child: Text("Start",style: TextStyle(
                                          color: AppColors.theme2,
                                        ),),
                                      ),
                                    SizedBox(height: 5.h,),
                                  ],
                                )
                                : Container(),
                          ],
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black, width: 3),
                      image: DecorationImage(
                        image: AssetImage(
                            PagePositionController.onBoardingImages[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
