import 'package:flutter/material.dart';
import 'package:livechat/Widgets/builders/gridviewbuilder.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../Controller/textbuttonController.dart';
import '../Models/callermodel.dart';
import '../Widgets/NewTextButton.dart';
import '../Widgets/builders/listviewbuilders.dart';

class NewPage extends StatelessWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFDF56),
        onPressed: () {},
        child: Container(
          height: 56.0,
          width: 56.0,
          child: CircleAvatar(
            backgroundColor: Colors.yellow[400],
            backgroundImage: AssetImage("images/coin.png"),
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 0.5.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 2.w),
              child: Row(
                children: [
                  CustomNewTextButton(
                    text: 'Popular',
                    onPressFunction: () {
                      NewPageControllers.currentButton.value = 'popular';
                      NewPageControllers.listLength.value = 5;
                    },
                    value: 'popular',
                  ),
                  CustomNewTextButton(
                    text: 'New',
                    onPressFunction: () {
                      NewPageControllers.currentButton.value = 'new';
                      NewPageControllers.listLength.value = 1;
                      NewPageControllers.selectedCategory.value="All";
                    },
                    value: 'new',
                  ),
                  CustomNewTextButton(
                    text: 'Followed',
                    onPressFunction: () {
                      NewPageControllers.currentButton.value = 'follow';
                      NewPageControllers.listLength.value = 0;
                    },
                    value: 'follow',
                  ),
                  SizedBox(
                    height: 0.6.h,
                  ),
                ],
              ),
            ),
            CustomListViewBuilder(),
            SizedBox(
              height: 0.6.h,
            ),
            CustomGridViewBuilder(),
          ],
        ),
      ),
    );
  }
}
