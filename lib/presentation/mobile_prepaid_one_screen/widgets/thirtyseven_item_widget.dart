import '../controller/mobile_prepaid_one_controller.dart';
import '../models/thirtyseven_item_model.dart';
import 'package:adeb_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ThirtysevenItemWidget extends StatelessWidget {
  ThirtysevenItemWidget(
    this.thirtysevenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ThirtysevenItemModel thirtysevenItemModelObj;

  var controller = Get.find<MobilePrepaidOneController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: thirtysevenItemModelObj.belgeman!.value,
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
                  thirtysevenItemModelObj.jenningsChamplin!.value,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 3.v),
              Obx(
                () => Text(
                  thirtysevenItemModelObj.jenningsChamplin1!.value,
                  style: CustomTextStyles.bodySmallOnPrimaryContainer,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgCheckmarkGray400,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 12.v),
        ),
      ],
    );
  }
}
