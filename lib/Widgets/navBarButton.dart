import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../Colors/colors.dart';
import '../Controller/nar_bar_controller.dart';

class CustomNavBarButton extends StatelessWidget {
  final int index;
  final String image;
  final Function() onPress;
  final IconData icon;

  const CustomNavBarButton({
    Key? key,
    required this.index,
    required this.onPress,
    required this.icon,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(
            () {
          if (index == 1 && NavigationBarController.currentPage.value == 1) {
            return IconButton(
              onPressed: onPress,
              icon: SvgPicture.asset(
                "images/video2.svg",
                color:AppColors.theme2
              ),
            );
          } else {
            return IconButton(
              onPressed: onPress,
              icon: SvgPicture.asset(
                image,
                color: NavigationBarController.currentPage.value == index
                    ? AppColors.theme2
                    : Colors.grey,
              ),
            );
          }
        },
      ),
    );
  }
}
