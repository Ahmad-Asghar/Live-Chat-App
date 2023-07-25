import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:livechat/Colors/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../Controller/textcontrollers.dart';
import '../Widgets/mainbutton.dart';
import '../Widgets/radiobutton.dart';
import '../Widgets/textfield.dart';
import '../Widgets/title_row.dart';
import '../pickers/countrypicker.dart';
import '../pickers/datePicker.dart';
import 'bottom_nav_bar.dart';

class Registration extends StatelessWidget {
  const Registration({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 1.7.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 22.w,
                    height: 5.h,
                  ),
                  Text(
                    "Registration",
                    style:
                        TextStyle(fontSize: 8.w, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 22.w,
                    height: 5.h,
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            Get.to(()=>const BottomNavBar());
                          },
                          child: Text(
                            "Skip",
                            style: TextStyle(
                                fontSize: 6.w, color: AppColors.theme2),
                          ),
                        ),
                        const Expanded(
                            child: Icon(
                          Icons.chevron_right_outlined,
                        ))
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              const CustomTitle(
                text: 'Nickname',
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomRegistrationField(
                hintText: 'Nickname',
                enable: false,
                onPressedFunction: () {},
                controller: TextFieldControllers.nickName.value,
                readOnly: false,
                onTextFieldTap: () {},
              ),
              SizedBox(
                height: 2.h,
              ),
              const CustomTitle(
                text: 'Date of Birth',
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomRegistrationField(
                hintText: 'Date of Birth',
                enable: true,
                onPressedFunction: () {
                  Pickers.selectEventDate(context);
                },
                controller: TextFieldControllers.dateOfBirth.value,
                readOnly: true,
                onTextFieldTap: () {
                  Pickers.selectEventDate(context);
                },
              ),
              SizedBox(
                height: 2.h,
              ),
              const CustomTitle(
                text: 'Country',
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomRegistrationField(
                hintText: 'Select a Country',
                enable: true,
                onPressedFunction: () {
                  CountryPicker.pickCountry(context);
                },
                controller: TextFieldControllers.country.value,
                readOnly: true,
                onTextFieldTap: () {
                  CountryPicker.pickCountry(context);
                },
              ),
              SizedBox(
                height: 2.h,
              ),
              const CustomTitle(
                text: 'Invitation Code (optimal)',
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomRegistrationField(
                hintText: '',
                enable: false,
                onPressedFunction: () {},
                controller: TextFieldControllers.invitationCode.value,
                readOnly: false,
                onTextFieldTap: () {},
              ),
              SizedBox(
                height: 2.h,
              ),
              const CustomTitle(
                text: 'Gender',
              ),
              Row(
                children: [
                  CustomRadioButton(
                    title: 'Male',
                    value: 'male',
                    onChanged: () {
                      TextFieldControllers.setGender("male");
                    },
                  ),
                  CustomRadioButton(
                    title: 'Female',
                    value: 'female',
                    onChanged: () {
                      TextFieldControllers.setGender("female");
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "You can't change your gender afterwards.",
                style: TextStyle(color: AppColors.theme2, fontSize: 4.4.w),
              ),
              Text(
                "Please confrim your choice",
                style: TextStyle(color: AppColors.theme2, fontSize: 4.4.w),
              ),
              SizedBox(
                height: 2.h,
              ),
              MainButton(
                text: 'Next',
                textColor: Colors.white,
                backgroundColor: AppColors.theme2,
                borderColor: AppColors.theme2,
                onPressFunction: () {
                  Get.to(()=>const BottomNavBar());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
