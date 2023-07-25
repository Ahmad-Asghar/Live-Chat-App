import 'package:flutter/material.dart';
import 'package:livechat/Colors/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../Widgets/list_tiles/vippagelists.dart';
import '../Widgets/mainbutton.dart';

class VIP extends StatelessWidget {
   VIP({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.pink[50],
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: CircleAvatar(
                          radius: 4.4.w,
                          backgroundColor: Colors.black,
                          child: Icon(
                            Icons.chevron_left,
                            color: Colors.white,
                            size: 8.2.w,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "LiveChat VIP",
                      style: TextStyle(
                        fontSize: 7.w,
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                      width: 14.w,
                    )
                  ],
                ),
                const CustomVIPPageListTile(
                    title: "Monthly Coins",
                    subTitle: "Get 120 coins every month,15%  monthly discount",
                    image: "images/coins.png"),
                const CustomVIPPageListTile(
                    title: "Unique VIP Badge",
                    subTitle: "Stand Out with an exclusive symbol identity",
                    image: "images/men.png"),
                const CustomVIPPageListTile(
                    title: "Unlock Private Albums",
                    subTitle: "Unlock all secret pictures & videos for free",
                    image: "images/women.png"),
                const CustomVIPPageListTile(
                    title: "10% off",
                    subTitle: "10% Discount on all charges",
                    image: "images/gift.png"),
                const CustomVIPPageListTile(
                    title: "Unlimited Messages",
                    subTitle:
                        "Unlock restrictions on sending and  receiving messages.Send messages to anyone you want",
                    image: "images/phone.png"),
                SizedBox(
                  height: 2.h,
                ),
                MainButton(
                  text: "\$9.99/Month",
                  textColor: Colors.white,
                  backgroundColor: Colors.pink.shade300,
                  borderColor: Colors.pink.shade300,
                  onPressFunction: () {},
                ),
                SizedBox(
                  height: 1.h,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Restore",
                    style: TextStyle(fontSize: 6.w, color: AppColors.theme1),
                  ),
                ),
                const Text(
                  "You are able to turn auto-review at any time",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child:  Text(
                    "Payments will be charged to your Google play store Account at the confirmation of purchase.Subscription automatically renews unless it is cancelled at least 24 hours before the end of the Subscription",
                    style: TextStyle(
                      fontSize: 3.7.w,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                SizedBox(
                  height: 3.h,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
