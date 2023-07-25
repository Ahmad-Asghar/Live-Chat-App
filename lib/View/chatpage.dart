import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:livechat/Widgets/appbar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ChatPage extends StatelessWidget {
  final String name;
  const ChatPage({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.grey[100],
          child: Column(
            children: [
              CustomAppBar(
                  title: name,
                  onBackButtonPress: () {
                    Navigator.pop(context);
                  }),
              SizedBox(
                height: 1.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "9:13 AM",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    height: 4.h,
                    width: 25.w,
                  )
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.w),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CircleAvatar(
                                  radius: 6.w,
                                  backgroundImage:
                                      const AssetImage("images/check.png"),
                                ),
                                const Image(
                                    image: AssetImage("images/profile.png"))
                              ],
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)),
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  "Hello ,our system shows that you have closed your recharge order.What problem have you encounted? We are very glad to help you solve it",
                                  style: TextStyle(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.w),
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          "images/audio.svg",
                          color: Colors.grey[600],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 2.h),
                          child: TextField(
                            decoration: InputDecoration(),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          "images/smile.svg",
                          color: Colors.grey[600],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          "images/add.svg",
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
