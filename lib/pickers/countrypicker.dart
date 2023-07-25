import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/textcontrollers.dart';

class CountryPicker extends GetxController{

 static Future<void> pickCountry(BuildContext context)async {
    showCountryPicker(
      context: context,
      onSelect: (Country country) {
        print('Select country: ${country.name}');
        TextFieldControllers.country.value.text =country.name;
      },
    );
  }
}