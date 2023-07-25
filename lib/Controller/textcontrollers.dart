import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFieldControllers extends GetxController {
  static final  nickName = TextEditingController().obs;
  static final  dateOfBirth = TextEditingController().obs;
  static final  country = TextEditingController().obs;
  static final  invitationCode = TextEditingController().obs;
  static final RxString gender='male'.obs;

 static Future<void> setGender(String gender)async {
print(gender);
TextFieldControllers.gender.value=gender;
  }
}
