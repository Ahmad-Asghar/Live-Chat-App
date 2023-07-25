
import 'package:get/get.dart';

class SettingController extends GetxController{

  static  RxBool autoTranslation=false.obs;
  static RxBool clearData=false.obs;

  static  enableAutoTranslation(bool value){
autoTranslation.value=value;
  }
  static  clearPersonalData(bool value){
clearData.value=value;
  }
}