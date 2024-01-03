import 'controller/profile_controller.dart';
import 'models/profile_model.dart';
import 'package:adeb_s_application3/core/app_export.dart';
import 'package:adeb_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:adeb_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:adeb_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:adeb_s_application3/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  ProfileController controller = Get.put(ProfileController(ProfileModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 18.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgEllipse107,
                      height: 139.adaptSize,
                      width: 139.adaptSize,
                      radius: BorderRadius.circular(69.h)),
                  SizedBox(height: 8.v),
                  Obx(() => Text(
                      controller.profileModelObj.value.suzaneJobs.value,
                      style: theme.textTheme.displaySmall)),
                  SizedBox(height: 9.v),
                  Obx(() => Text(controller.profileModelObj.value.email.value,
                      style: CustomTextStyles.titleSmallGray500)),
                  SizedBox(height: 41.v),
                  _buildFrameThirtyNine(
                      televisionImage: ImageConstant.imgFrame37,
                      password: "lbl_password".tr),
                  SizedBox(height: 28.v),
                  _buildFrameThirtyEight(),
                  SizedBox(height: 29.v),
                  _buildFrameThirtyNine(
                      televisionImage: ImageConstant.imgTelevision,
                      password: "lbl_languages".tr),
                  SizedBox(height: 27.v),
                  _buildFrameThirtyNine(
                      televisionImage: ImageConstant.imgInbox,
                      password: "lbl_app_information".tr),
                  SizedBox(height: 28.v),
                  _buildFrameFortyOne(),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 68.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgGrid,
            margin: EdgeInsets.only(left: 24.h, top: 6.v, bottom: 6.v)),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_profile".tr));
  }

  /// Section Widget
  Widget _buildFrameThirtyEight() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
              imagePath: ImageConstant.imgFingerprint,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(top: 5.v)),
          Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text("lbl_touch_id".tr,
                  style: CustomTextStyles.titleLargeSemiBold)),
          Spacer(),
          Obx(() => CustomSwitch(
              margin: EdgeInsets.only(top: 3.v),
              value: controller.isSelectedSwitch.value,
              onChange: (value) {
                controller.isSelectedSwitch.value = value;
              }))
        ]);
  }

  /// Section Widget
  Widget _buildFrameFortyOne() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgContrast,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(top: 3.v, bottom: 2.v)),
      Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text("lbl_support".tr,
              style: CustomTextStyles.titleLargeSemiBold)),
      Spacer(),
      Padding(
          padding: EdgeInsets.only(top: 4.v, bottom: 6.v),
          child: Text("lbl_5156446981".tr,
              style: CustomTextStyles.bodySmallGray500))
    ]);
  }

  /// Common widget
  Widget _buildFrameThirtyNine({
    required String televisionImage,
    required String password,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: televisionImage,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(top: 2.v, bottom: 3.v)),
      Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text(password,
              style: CustomTextStyles.titleLargeSemiBold
                  .copyWith(color: theme.colorScheme.onPrimaryContainer))),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(top: 2.v, bottom: 3.v))
    ]);
  }
}
