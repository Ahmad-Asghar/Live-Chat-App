import 'package:get/get.dart';

class CallerModel extends GetxController {
  final String name;
  final String age;
  final String location;
  final String price;
  final String status;
  final String callerPic;

  CallerModel(
      { required this.callerPic,
      required this.name,
      required this.age,
      required this.location,
      required this.price,
      required this.status});

  static RxList<CallerModel> callerList1 =[
   CallerModel(name: "Sweet", age: "22", location: "Canada", price: "100", status: "Offline", callerPic: 'images/caller5.png'),
   CallerModel(name: "Carla", age: "20", location: "India", price: "140", status: "Online", callerPic: 'images/caller6.png'),
   CallerModel(name: "Ms.laila", age: "20", location: "Philippines", price: "110", status: "Offline", callerPic: 'images/caller7.png'),
   CallerModel(name: "Akshita", age: "18", location: "India", price: "80", status: "Online", callerPic: 'images/caller8.png'),
   CallerModel(name: "Arya", age: "22", location: "Iceland", price: "90", status: "Offline", callerPic: 'images/caller9.png'),
    CallerModel(name: "Geilis", age: "20", location: "India", price: "140", status: "Online", callerPic: 'images/caller1.png'),
    CallerModel(name: "Lilyyy", age: "20", location: "Vietnam", price: "100", status: "Offline", callerPic: 'images/caller2.png'),
    CallerModel(name: "Aishuu", age: "16", location: "Colombia", price: "120", status: "Online", callerPic: 'images/caller3.png'),
    CallerModel(name: "Orean", age: "19", location: "Vietnam", price: "160", status: "Online", callerPic: 'images/caller4.png'),


  ].obs;
  static RxList<CallerModel> callerList2 =[
    CallerModel(name: "Tami", age: "22", location: "Canada", price: "100", status: "Offline", callerPic: 'images/caller10.png'),
    CallerModel(name: "Annie", age: "20", location: "India", price: "140", status: "Online", callerPic: 'images/caller11.png'),
    CallerModel(name: "Marya", age: "20", location: "Philippines", price: "110", status: "Offline", callerPic: 'images/caller12.png'),
    CallerModel(name: "Buse", age: "18", location: "India", price: "80", status: "Online", callerPic: 'images/caller13.png'),
    CallerModel(name: "Noty Crush", age: "22", location: "Iceland", price: "90", status: "Offline", callerPic: 'images/caller14.png'),
    CallerModel(name: "Chichi", age: "20", location: "India", price: "140", status: "Online", callerPic: 'images/caller15.png'),
  ].obs;
  static RxList<CallerModel> callerList3 =[
    CallerModel(name: "Kiara011", age: "20", location: "India", price: "140", status: "Online", callerPic: 'images/caller1.png'),
    CallerModel(name: "Summer", age: "22", location: "Canada", price: "100", status: "Offline", callerPic: 'images/caller16.png'),
    CallerModel(name: "Tanvi", age: "20", location: "India", price: "140", status: "Online", callerPic: 'images/caller17.png'),
    CallerModel(name: "Moon", age: "20", location: "Philippines", price: "110", status: "Offline", callerPic: 'images/caller18.png'),
    CallerModel(name: "Somya", age: "18", location: "India", price: "80", status: "Online", callerPic: 'images/caller19.png'),
    CallerModel(name: "Jhum", age: "22", location: "Iceland", price: "90", status: "Offline", callerPic: 'images/caller20.png'),
    CallerModel(name: "Kiara011", age: "20", location: "India", price: "140", status: "Online", callerPic: 'images/caller1.png'),

  ].obs;
  static RxList<CallerModel> callerList4 =[
    CallerModel(name: "Buse", age: "18", location: "India", price: "80", status: "Online", callerPic: 'images/caller13.png'),
    CallerModel(name: "Noty Crush", age: "22", location: "Iceland", price: "90", status: "Offline", callerPic: 'images/caller14.png'),
    CallerModel(name: "Chichi", age: "20", location: "India", price: "140", status: "Online", callerPic: 'images/caller15.png'),
    CallerModel(name: "Tami", age: "22", location: "Canada", price: "100", status: "Offline", callerPic: 'images/caller10.png'),
    CallerModel(name: "Annie", age: "20", location: "India", price: "140", status: "Online", callerPic: 'images/caller11.png'),
    CallerModel(name: "Marya", age: "20", location: "Philippines", price: "110", status: "Offline", callerPic: 'images/caller12.png'),


  ].obs;
  static RxList<CallerModel> callerList5 =[
    CallerModel(name: "Summer", age: "22", location: "Canada", price: "100", status: "Offline", callerPic: 'images/caller16.png'),
    CallerModel(name: "Tanvi", age: "20", location: "India", price: "140", status: "Online", callerPic: 'images/caller17.png'),
    CallerModel(name: "Moon", age: "20", location: "Philippines", price: "110", status: "Offline", callerPic: 'images/caller18.png'),
    CallerModel(name: "Somya", age: "18", location: "India", price: "80", status: "Online", callerPic: 'images/caller19.png'),
    CallerModel(name: "Jhum", age: "22", location: "Iceland", price: "90", status: "Offline", callerPic: 'images/caller20.png'),

  ].obs;
  static RxList<CallerModel> callerList6 =[
    CallerModel(name: "Sweet", age: "22", location: "Canada", price: "100", status: "Offline", callerPic: 'images/caller5.png'),
    CallerModel(name: "Carla", age: "20", location: "India", price: "140", status: "Online", callerPic: 'images/caller6.png'),
    CallerModel(name: "Ms.laila", age: "20", location: "Philippines", price: "110", status: "Offline", callerPic: 'images/caller7.png'),
    CallerModel(name: "Akshita", age: "18", location: "India", price: "80", status: "Online", callerPic: 'images/caller8.png'),
    CallerModel(name: "Arya", age: "22", location: "Iceland", price: "90", status: "Offline", callerPic: 'images/caller9.png'),
    CallerModel(name: "Geilis", age: "20", location: "India", price: "140", status: "Online", callerPic: 'images/caller1.png'),
    CallerModel(name: "Lilyyy", age: "20", location: "Vietnam", price: "100", status: "Offline", callerPic: 'images/caller2.png'),
    CallerModel(name: "Aishuu", age: "16", location: "Colombia", price: "120", status: "Online", callerPic: 'images/caller3.png'),
    CallerModel(name: "Orean", age: "19", location: "Vietnam", price: "160", status: "Online", callerPic: 'images/caller4.png'),


  ].obs;

}
