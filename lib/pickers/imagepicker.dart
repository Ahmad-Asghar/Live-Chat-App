import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfilePicker extends GetxController {
  static RxString imageFile ="".obs;
  static selectMode(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.15,
            color: Colors.white,
            child: Row(
              children: [
                GestureDetector(
                  onTap: (){
                    pickImageFromCamera();
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 8.w,
                          child: Icon(Icons.camera_alt,size: 7.w,),
                        ),
                        SizedBox(height: 1.w,),
                        Text("Camera",style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    pickImageFromGallery();
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 8.w,
                          child: Icon(Icons.photo,size: 7.w,),
                        ),
                        SizedBox(height: 1.w,),
                        Text("Gallery",style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                  ),
                ),

              ],
            ),
          );
        });
  }
  static pickImageFromCamera() async {
    print("Calling");
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      String path=pickedFile.path.toString();
        imageFile.value = path;
       print("-----------------------------------"+imageFile.value);
    }
  }
  static pickImageFromGallery() async {
    print("Calling");
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      String path=pickedFile.path.toString();
      print("-----------------------------------"+path);
      imageFile.value = path;
      print("-----------------------------------"+imageFile.value);
    }
  }
}
