import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Widgets/appbar.dart';
import '../Widgets/list_tiles/settings-tiles.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child:
          Column(
            children: [
              CustomAppBar(
                title: 'About',
                onBackButtonPress: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                height: 7.h,
              ),
              Container(
                child: Image(image: AssetImage("images/about.png",),),
                decoration: BoxDecoration(
                  color: Color(0xFF1B1934),
                  borderRadius: BorderRadius.circular(10)
                ),
                height: 25.w,
                width: 27.w,
              ),
              SizedBox(height: 2.h,),
              Text("Livechat",style: TextStyle(
                fontSize: 5.w,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 1.h,),
              Text("1.18(24)",style: TextStyle(
                  fontSize: 4.w,

              ),),
              SizedBox(height: 3.h,),
              CustomSettingsTiles(
                  title: 'Terms and Conditions',
                  trailingWidget: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.chevron_right_outlined,color: Colors.black,),
                  )
              ),
              SizedBox(height: 1.h,),
              CustomSettingsTiles(
                  title: 'Privacy Policy',
                  trailingWidget: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.chevron_right_outlined,color: Colors.black,),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
