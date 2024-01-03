import '../controller/send_money_controller.dart';
import '../models/nineteen_item_model.dart';
import 'package:adeb_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NineteenItemWidget extends StatelessWidget {
  NineteenItemWidget(
    this.nineteenItemModelObj, {
    Key? key,
    this.onTapAngelinaDruff,
  }) : super(
          key: key,
        );

  NineteenItemModel nineteenItemModelObj;

  var controller = Get.find<SendMoneyController>();

  VoidCallback? onTapAngelinaDruff;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapAngelinaDruff!.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: nineteenItemModelObj.angelinaDruff!.value,
              height: 48.adaptSize,
              width: 48.adaptSize,
              radius: BorderRadius.circular(
                24.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 3.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    nineteenItemModelObj.jenningsChamplin!.value,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 3.v),
                Obx(
                  () => Text(
                    nineteenItemModelObj.jenningsChamplin1!.value,
                    style: CustomTextStyles.bodySmallOnPrimaryContainer,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Obx(
            () => CustomImageView(
              imagePath: nineteenItemModelObj.angelinaDruff1!.value,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 12.v),
            ),
          ),
        ],
      ),
    );
  }
}
