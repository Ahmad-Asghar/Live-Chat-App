import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/textcontrollers.dart';

class Pickers extends GetxController{

  final TextFieldControllers textFieldControllers = Get.put(TextFieldControllers());
  static Future<void> selectEventDate(BuildContext context) async {
    DateTime _selectedDate = DateTime.now();
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: _selectedDate,
        firstDate: DateTime(1980),
        lastDate:DateTime.now());
    if (picked != null){
      String date = picked.toString();
         List<String> date1 = date.split(" ");
      TextFieldControllers.dateOfBirth.value.text = date1[0];
    }

  }
}