import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomCoinContainer extends StatelessWidget {
  final Function() onPress;
  final String off;
  final String coins;
  final String price;
  const CustomCoinContainer({Key? key, required this.off, required this.coins, required this.price, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: onPress,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                )),
            height: 12.h,
            width: 20.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 15.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(off),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: const AssetImage("images/coin.png"),height: 4.w,),
                          SizedBox(width: 2.w,),
                          Text(coins,style: const TextStyle(
                            fontWeight: FontWeight.bold
                          ),),
                        ],
                      )
                    ],

                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xffADC7F8),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(200),
                      topRight: Radius.circular(200)
                    )
                  ),
                  height: 4.h,
                  width: double.infinity,
                  child: Center(child: Text(price,style: const TextStyle(
                    color: Colors.white
                  ),)),
                ),
              ],

            ),
          ),
        ),
      ),
    );
  }
}
