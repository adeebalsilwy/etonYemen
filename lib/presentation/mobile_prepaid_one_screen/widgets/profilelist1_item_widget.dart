import '../controller/mobile_prepaid_one_controller.dart';
import '../models/profilelist1_item_model.dart';
import 'package:adeb_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Profilelist1ItemWidget extends StatelessWidget {
  Profilelist1ItemWidget(
    this.profilelist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Profilelist1ItemModel profilelist1ItemModelObj;

  var controller = Get.find<MobilePrepaidOneController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.h,
      child: Obx(
        () => CustomImageView(
          imagePath: profilelist1ItemModelObj.ellipse!.value,
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
