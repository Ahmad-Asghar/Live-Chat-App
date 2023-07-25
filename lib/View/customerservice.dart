import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../Widgets/pointerContainer.dart';

class CustomerService extends StatelessWidget {
  CustomerService({Key? key}) : super(key: key);
  List<String> names = [
    "Charming Lips 8",
    "Sweet voice 6",
    "Long leg 1",
    "Sky 10",
    "Girls Next Door",
    "Elegent 61",
    "Graceful 2",
    "Sexy Lady 4",
    "Beautiful Eyes 2",
    "Dancing Queen 1",
    "Young 2",
    "Long leg 5",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          elevation: 5,
          child: Container(
            color: Colors.grey[300],
            height: 7.h,
            child: Row(
              
              children: [
                Expanded(child: SvgPicture.asset("images/like.svg")),
                Expanded(child: SvgPicture.asset("images/record.svg")),
                Expanded(child: SvgPicture.asset("images/send.svg"))
              ],
            ),
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/customer.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5.w,
                          vertical: 3.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: CircleAvatar(
                                child: Icon(
                                  Icons.chevron_left,
                                  color: Colors.white,
                                  size: 10.w,
                                ),
                                radius: 5.w,
                                backgroundColor: Colors.grey.withOpacity(0.6),
                              ),
                            ),
                            CircleAvatar(
                              child: Icon(
                                Icons.warning_rounded,
                                color: Colors.white,
                                size: 6.5.w,
                              ),
                              radius: 5.w,
                              backgroundColor: Colors.grey.withOpacity(0.6),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5.w,
                          vertical: 2.h,
                        ),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.circle,
                                color: Color(0xff05FF00),
                                size: 3.5.w,
                              ),
                              Text(
                                "Online",
                                style: TextStyle(
                                  color: Color(0xff05FF00),
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 3.h,
                          width: 17.w,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 0.5.h),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5.w,
                    vertical: 01.h,
                  ),
                  child: Row(
                    children: [
                      // CountriesFlag(
                      //   Flags.turkey,
                      //   width: 10.w,
                      //   height: 10.w,
                      //   fit: BoxFit.cover,
                      //   alignment: Alignment.center,
                      // ),
                      Image(image: AssetImage("images/turkey.png"),height: 3.h,),
                      SizedBox(width: 3.w),
                      Text(
                        "Afar",
                        style: TextStyle(
                          fontSize: 4.7.w,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5.w,
                    vertical: 1.h,
                  ),
                  child: Row(
                    children: [
                      CustomPointerContainer(
                        backGroundColor: Colors.pink.shade500,
                        icon: Icons.push_pin,
                        text: '19',
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      CustomPointerContainer(
                        backGroundColor: Colors.purple.shade500,
                        icon: Icons.location_on,
                        text: 'Turkey',
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      CustomPointerContainer(
                        backGroundColor: Colors.blue,
                        icon: Icons.language,
                        text: 'English',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5.w,
                    vertical: 0.5.h,
                  ),
                  child: Text(
                    "You also want to have fun don’t think.I,m ready to meet you.We can have fun.I,m a dancer cheerful Waiting for you my love.",
                    style: TextStyle(
                      fontSize: 4.w,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5.w,
                    vertical: 0.5.h,
                  ),
                  child: Divider(
                    height: 0,
                    thickness: 1.2,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5.w,
                    vertical: 2.h,
                  ),
                  child: Text(
                    "Videos",
                    style: TextStyle(
                      fontSize: 6.w,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.26,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: GridView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: 10,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 5,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 5,
                        mainAxisExtent: 12.h,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        if(index!=9){
                          int picindex=index+1;
                          return Material(
                            borderRadius: BorderRadius.circular(6),
                            elevation: 5,
                            child: Container(
                              child: Center(
                                child: Image(
                                  image: AssetImage("images/vector1.png"),
                                ),
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/caller$picindex.png"),
                                  fit: BoxFit.cover,
                                ),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                          );
                        }if(index==9){
                        return  Material(
                            borderRadius: BorderRadius.circular(6),
                            elevation: 5,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                borderRadius: BorderRadius.circular(6)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircleAvatar(
                                    child: Icon(Icons.add,size:9.w,color: Colors.white,),
                                    radius: 5.w,
                                    backgroundColor: Colors.pink[300],
                                  ),
                                  Text("Add More",style: TextStyle(
                                    fontSize: 3.w,
                                    fontWeight: FontWeight.bold
                                  ),)
                                ],
                              ),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5.w,
                    vertical: 2.h,
                  ),
                  child: Text(
                    "Impressions",
                    style: TextStyle(
                      fontSize: 6.w,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.14,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: GridView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: 12,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 5,
                        mainAxisExtent: 3.5.h,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xffD9D6D6), width: 1),
                              color: Colors.pink[300],
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 1.4.w),
                                child: Text(
                                  names[index],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 4.w),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5.w,
                    vertical: 2.h,
                  ),
                  child: Text(
                    "Gifts",
                    style: TextStyle(
                      fontSize: 6.w,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(

                  height: MediaQuery.of(context).size.height * 0.3,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: GridView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: 14,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 5,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 5,
                        mainAxisExtent: 8.h,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        if (index == 13) {
                          print("index");
                          return TextButton(
                              onPressed: () {}, child: Text("See more",style: TextStyle(color: Colors.black,fontSize: 3.w),));
                        } if(index!=14){
                          int picindex=index+1;
                          return Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image(image: AssetImage("images/gitf$picindex.png")),
                                Text(
                                  "X4",
                                  style: TextStyle(
                                    fontSize: 4.5.w,
                                  ),
                                )
                              ],
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
