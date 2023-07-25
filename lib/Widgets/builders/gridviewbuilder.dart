import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../Controller/textbuttonController.dart';

class CustomGridViewBuilder extends StatelessWidget {
  const CustomGridViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(2.w),
        child: Obx(
          () => GridView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: NewPageControllers.callerModel.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                // childAspectRatio: MediaQuery.of(context).size.width/
                //     (MediaQuery.of(context).size.height/4),
                mainAxisExtent: 45.h,

            ),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.5.w, vertical: 2),
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              NewPageControllers.callerModel[index].callerPic),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.5.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 1.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.local_fire_department,
                                          color: Colors.red,
                                        ),
                                        SizedBox(
                                          width: 1.w,
                                        ),
                                        Text(
                                          NewPageControllers
                                              .callerModel[index].name,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 6.w),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Icon(
                                    Icons.fiber_manual_record,
                                    color: NewPageControllers
                                                .callerModel[index].status ==
                                            "Online"
                                        ? Colors.green
                                        : Colors.red,
                                    size: 4.w,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 0.4.h,
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.red[400],
                                        borderRadius: BorderRadius.circular(6)),
                                    child: Center(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 0.8.w, vertical: 0.8.w),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(
                                              Icons.female,
                                              size: 3.5.w,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              NewPageControllers
                                                  .callerModel[index].age,
                                              style: TextStyle(
                                                  fontSize: 3.5.w,
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.purple[400],
                                        borderRadius: BorderRadius.circular(6)),
                                    child: Center(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 0.8.w, vertical: 0.8.w),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              size: 3.5.w,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              NewPageControllers
                                                  .callerModel[index].location,
                                              style: TextStyle(
                                                  fontSize: 3.5.w,
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 0.4.h,
                              ),
                              Row(
                                children: [
                                  Image(image: AssetImage("images/coin.png"),height: 3.h,width: 5.w,),
                                  SizedBox(
                                    width: 1.w,
                                  ),
                                  Text(
                                    NewPageControllers
                                            .callerModel[index].price +
                                        "/min",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: NewPageControllers
                                            .callerModel[index].status ==
                                        "Online"
                                    ? Colors.white
                                    : Colors.grey[500],
                                radius: 6.3.w,
                                child: CircleAvatar(
                                  backgroundColor: NewPageControllers
                                              .callerModel[index].status ==
                                          "Online"
                                      ? Colors.purple[200]
                                      : Colors.grey[500],
                                  radius: 6.w,
                                  child: IconButton(
                                   onPressed: (){

                                   },
                                    icon: SvgPicture.asset(
                                        "images/video2.svg",
                                        color:Colors.white
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
