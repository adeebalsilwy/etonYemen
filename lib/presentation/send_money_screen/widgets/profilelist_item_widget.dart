import '../controller/send_money_controller.dart';
import '../models/profilelist_item_model.dart';
import 'package:adeb_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfilelistItemWidget extends StatelessWidget {
  ProfilelistItemWidget(
    this.profilelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfilelistItemModel profilelistItemModelObj;

  var controller = Get.find<SendMoneyController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.h,
      child: Obx(
        () => CustomImageView(
          imagePath: profilelistItemModelObj.ellipse!.value,
          height: 60.adaptSize,
          width: 60.adaptSize,
          radius: BorderRadius.circular(
            30.h,
          ),
        ),
      ),
    );
  }
}
