import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
class PagePositionController extends GetxController{

  static PageController pageController=PageController();

  static RxList<String> onBoardingImages=["images/face1.png","images/page2.png"].obs;
  static RxList<String> onBoardingText=["Looking for fun","Instant Video Chat"].obs;
}