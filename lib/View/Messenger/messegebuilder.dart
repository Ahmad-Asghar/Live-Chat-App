import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Models/messegemodel.dart';
import '../chatpage.dart';

class MessageBuilder extends StatelessWidget {
  const MessageBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: MessageModel.messagesList.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                ListTile(
                  onTap: (){
                    Get.to(()=>ChatPage(name: MessageModel.messagesList[index].name,));
                  },
                  leading: CircleAvatar(
                    backgroundImage:
                    AssetImage(MessageModel.messagesList[index].pic),
                  ),
                  title: Row(
                    children: [
                      Image(
                          image:
                          AssetImage(MessageModel.messagesList[index].sign)),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        MessageModel.messagesList[index].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),

                  subtitle: Text(
                    MessageModel.messagesList[index].lastMessage,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal:4.5.w),
                  child: Divider(
                    height: 0,
                    thickness: 1.5,
                  ),
                ),
              ],
            );
          }),
    );
  }
}
