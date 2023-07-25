import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../Controller/nar_bar_controller.dart';
import '../Widgets/navBarButton.dart';
class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(() => NavigationBarController
            .screen[NavigationBarController.currentPage.value]),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 7.h,
            width: double.infinity,
            child: Row(
              children: [
                CustomNavBarButton(
                  index: 0,
                  onPress: () {
                    NavigationBarController.changeScreen(0);
                  },
                  icon: Icons.message, image: 'images/message.svg',
                ),
                CustomNavBarButton(
                  index: 1,
                  onPress: () {
                    NavigationBarController.changeScreen(1);
                  },
                  icon: Icons.video_camera_back, image: 'images/video.svg',
                ),
                CustomNavBarButton(
                  index: 2,
                  onPress: () {
                    NavigationBarController.changeScreen(2);
                  },
                  icon: Icons.language, image: 'images/lang.svg',
                ),
                CustomNavBarButton(
                  index: 3,
                  onPress: () {
                    NavigationBarController.changeScreen(3);
                  },
                  icon: Icons.person, image: 'images/profile2.svg',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
