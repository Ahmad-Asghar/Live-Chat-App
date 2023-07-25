import 'package:get/get.dart';

import '../Models/callermodel.dart';

class NewPageControllers extends GetxController {
  static RxString currentButton = 'new'.obs;
  static RxInt listLength = 1.obs;
  static RxString selectedCategory = 'All'.obs;
  static List<String> categoryList = ["All", "Spanish", "Asian", "English", "Europe"];
  static RxList<CallerModel> callerModel = CallerModel.callerList1;

  static Future<void> changeCategory(String value) async {

    selectedCategory.value = value;

    if (value == "All") {
      callerModel.value = CallerModel.callerList6;
    } else if (value == "Spanish") {
      callerModel.value = CallerModel.callerList2;
    } else if (value == "Asian") {
     callerModel.value = CallerModel.callerList3;
    } else if (value == "English") {
     callerModel.value = CallerModel.callerList4;
    } else if (value == "Europe") {
      callerModel.value = CallerModel.callerList5;
    }

    print(callerModel.length.toString());
  }
}
