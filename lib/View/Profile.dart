import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:livechat/Controller/addCoins.dart';
import 'package:livechat/View/settings.dart';
import 'package:livechat/pickers/imagepicker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../Widgets/list_tiles/profile_tiles.dart';
import 'VIPpage.dart';
import 'about.dart';
import 'customerservice.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            Obx(
            ()=> GestureDetector(
                onTap: (){
                  ProfilePicker.selectMode(context);
                },
                child: ProfilePicker.imageFile==""?CircleAvatar(
                  radius: 12.5.w,
                 child: Icon(Icons.person_add_alt,size: 11.w,),
                ):CircleAvatar(
                  radius: 12.5.w,
                  backgroundImage: FileImage(File(ProfilePicker.imageFile.value)),
                ),

            ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              "Name",
              style: TextStyle(fontSize: 5.w),
            ),
            SizedBox(
              height: 1.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(6)),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 0.8.w, vertical: 0.8.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.male,
                            size: 3.5.w,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 1.w,
                          ),
                          Text(
                            "20",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.purple[400],
                      borderRadius: BorderRadius.circular(6)),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 0.8.w, vertical: 0.8.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 3.5.w,
                            color: Colors.white,
                          ),
                          Text(
                            "Pakistan",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            CustomProfileListTile(
              title: 'My Coins',
              leadingIcon: Icons.monetization_on,
              trailingText: AddCoins.coins.value,
              onTap: () {
                AddCoins.buyCoins(context);
              },

            ),
            SizedBox(
              height: 0.3.h,
            ),
            CustomProfileListTile(
              title: 'VIP',
              leadingIcon: Icons.safety_check_rounded,
              trailingText: "",
              onTap: () {
                Get.to(()=>VIP());
              },
            ),
            SizedBox(
              height: 0.3.h,
            ),
            CustomProfileListTile(
              title: 'Customer Service',
              leadingIcon: Icons.headphones,
              trailingText: "",
              onTap: () {
                Get.to(()=> CustomerService());

              },
            ),
            SizedBox(
              height: 0.3.h,
            ),
            CustomProfileListTile(
              title: 'Settings',
              leadingIcon: Icons.settings,
              trailingText: "",
              onTap: () {
                Get.to(()=>const Settings());
              },
            ),
            SizedBox(
              height: 0.3.h,
            ),
            CustomProfileListTile(
              title: 'About',
              leadingIcon: Icons.info,
              trailingText: "",
              onTap: () {
                Get.to(()=>const About());
              },
            ),
          ],
        ),
      ),
    );
  }
}
