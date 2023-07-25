import 'package:flutter/material.dart';
import '../Widgets/appbar.dart';
import 'Messenger/messegebuilder.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Column(
          children: [
            CustomAppBar(title: 'Messages', onBackButtonPress: () {  },),
            MessageBuilder(),
          ],
        ),
      ),
    );
  }
}
