import 'package:flutter/material.dart';
import 'messegebuilder.dart';

class Messeges extends StatelessWidget {
  const Messeges({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            MessageBuilder(),
          ],
        ),
      ),
    );
  }
}
