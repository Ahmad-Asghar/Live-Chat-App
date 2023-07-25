import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Colors/colors.dart';
import '../../Controller/textbuttonController.dart';

class CustomListViewBuilder extends StatelessWidget {
  const CustomListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.w),
      child: Container(
        height: 6.h,
        width: double.infinity,
        child: Obx(
              () => ListView.builder(
                shrinkWrap: true,
              itemCount: NewPageControllers.listLength.value,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1.w),
                  child: Obx(() => MaterialButton(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: NewPageControllers.selectedCategory.value ==
                        NewPageControllers.categoryList[index] ?Colors.grey[300]:null,
                    minWidth: 5.w,
                    onPressed: () {
                      NewPageControllers.changeCategory(NewPageControllers.categoryList[index]);
                    },
                    child: Text(
                      NewPageControllers.categoryList[index],
                      style: TextStyle(
                        color:NewPageControllers.selectedCategory.value ==
                            NewPageControllers.categoryList[index] ?AppColors.theme2:Colors.black,
                      ),
                    ),
                  ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
