import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:livechat/View/Profile.dart';
import 'package:livechat/View/NewPage.dart';
import 'package:livechat/View/Messenger/Messenger.dart';
import 'package:livechat/View/MessagesPage.dart';
class NavigationBarController extends GetxController {

 static RxInt currentPage = 1.obs;

 static  RxList<Widget> screen = [
   MessagesPage(),
   NewPage(),
   Messenger(),
   Profile(),
  ].obs;

 static Future<void>  changeScreen(int pageNo)async {
   NavigationBarController.currentPage.value=pageNo;
  print( NavigationBarController.currentPage.toString());
 }

}
