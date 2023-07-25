import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Widgets/coinContainer.dart';

class AddCoins extends GetxController {

 static RxString coins="0".obs;

  static addCoins(String value){
    coins.value=value;
  }
  static buyCoins(BuildContext context,) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[100],
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 3.w),
                                  child: IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: Icon(
                                        Icons.cancel_outlined,
                                        size: 10.w,
                                        color: Colors.white,
                                      )),
                                )
                              ],
                            ),
                            Obx(
                              ()=> Text(
                                "My Coins: $coins",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 6.w),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.w),
                              child: Row(
                                children: [
                                  CustomCoinContainer(
                                    off: '',
                                    coins: '500',
                                    price: '\$4.99', onPress: () {
                                    addCoins("500");
                                  },
                                  ),
                                  CustomCoinContainer(
                                    off: '15% off',
                                    coins: '1200',
                                    price: '\$4.99', onPress: () {  addCoins("1200"); },
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GestureDetector(
                                        onTap: (){
                                          addCoins("1200");
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Color(0xffFCC052),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          height: 12.h,
                                          width: 20.w,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                child: Center(
                                                  child: Text(
                                                    "VIP",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                                height: 8.w,
                                                width: 14.w,
                                                decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xffE3A323),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "VIP+",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                  Image(
                                                    image: AssetImage(
                                                        "images/gold.png"),
                                                    height: 5.w,
                                                  ),
                                                  Text(
                                                    " 1200",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                "\$9.99/Month",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.w),
                              child: Row(
                                children: [
                                  CustomCoinContainer(
                                    off: '20% off',
                                    coins: '2500',
                                    price: '\$19.99', onPress: () {  addCoins("2500"); },
                                  ),
                                  CustomCoinContainer(
                                    off: '30% off',
                                    coins: '7000',
                                    price: '\$49.99', onPress: () {  addCoins("7000"); },
                                  ),
                                  CustomCoinContainer(
                                    off: '35% off',
                                    coins: '15000',
                                    price: '\$99.99', onPress: () {  addCoins("15000"); },
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 0.7.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.w),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: MaterialButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    elevation: 0,
                                    height: 9.h,
                                    color: Colors.white,
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.share,
                                          color: Colors.red,
                                          size: 9.w,
                                        ),
                                        SizedBox(
                                          width: 3.w,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "SHARE 7 EARN 100 COINS",
                                              style: TextStyle(fontSize: 5.w),
                                            ),
                                            SizedBox(
                                              height: 0.5.h,
                                            ),
                                            Text(
                                              "Share with a friend a earn 100  coins for free",
                                              style: TextStyle(),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/coin.png"))),
                    height: 12.h,
                    width: 25.w,
                  )
                ],
              ));
        });
  }
}
