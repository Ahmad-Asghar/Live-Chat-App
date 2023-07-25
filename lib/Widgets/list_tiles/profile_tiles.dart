import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:livechat/Controller/addCoins.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class CustomProfileListTile extends StatelessWidget {
  final String title;
  final IconData leadingIcon;
  final String trailingText;
  final Function() onTap;
  const CustomProfileListTile({Key? key, required this.title, required this.leadingIcon, required this.trailingText, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: (){
            onTap();
          },
          leading: Icon(leadingIcon),
          title: Text(title,style: TextStyle(
              fontSize: 5.w
          ),),
          trailing: title=="My Coins"?Obx(
           ()=> Text(AddCoins.coins.value,style: TextStyle(
                color: Colors.orange[500],
                fontSize: 6.w
            ),),
          ):Text(trailingText,style: TextStyle(
              color: Colors.orange[500],
              fontSize: 6.w
          ),),

        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 3.w),
          child: Divider(
            height: 0,
            thickness: 1.5,
          ),
        ),
      ],
    );
  }
}
