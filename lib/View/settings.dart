import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:livechat/Colors/colors.dart';
import 'package:livechat/Controller/settingcontroller.dart';
import 'package:livechat/Widgets/mainbutton.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Widgets/appbar.dart';
import '../Widgets/list_tiles/settings-tiles.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  children: [
                    CustomAppBar(
                      title: 'Settings',
                      onBackButtonPress: () {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    CustomSettingsTiles(
                      title: 'User ID:96598654965486596',

                      trailingWidget: MaterialButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Text("Copy"),
                      ),
                    ),
                    Obx(()=> SwitchListTile(
                          title: Text("Auto Translation"),
                            value: SettingController.autoTranslation.value,
                            onChanged: (value) {
                              SettingController.enableAutoTranslation(value);
                            },
                          ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.w),
                      child: Divider(
                        height: 0,
                        thickness: 2,
                      ),
                    ),
                    Obx(()=> SwitchListTile(
                        title: Text("Clear Personal Data"),
                        subtitle: Text("After Uninstallation.we will clear all your data",style: TextStyle(
                          color: Colors.red
                        ),),
                        value: SettingController.clearData.value,
                        onChanged: (value) {
                          SettingController.clearPersonalData(value);
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.w),
                      child: Divider(
                        height: 0,
                        thickness: 2,
                      ),
                    ),
                    CustomSettingsTiles(
                      title: 'Email',
                      trailingWidget: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.chevron_right_outlined,color: Colors.black,),
                      )
                    ),
                    CustomSettingsTiles(
                        title: 'Clean Cache',
                        trailingWidget: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.chevron_right_outlined,color: Colors.black,),
                        )
                    ),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(bottom: 2.h),
                child: MainButton(text: "Log Out", textColor: Colors.white, backgroundColor: AppColors.theme1, borderColor:AppColors.theme1, onPressFunction: (){}),
              )
            ],
          ),
        ),
      ),
    );
  }
}
