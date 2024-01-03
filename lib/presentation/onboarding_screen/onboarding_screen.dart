import 'controller/onboarding_controller.dart';
import 'package:adeb_s_application3/core/app_export.dart';
import 'package:adeb_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends GetWidget<OnboardingController> {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgThumbsUp,
                          height: 80.v,
                          width: 78.h),
                      SizedBox(height: 26.v),
                      Text("msg_online_digital".tr,
                          style: CustomTextStyles.headlineSmallMedium),
                      SizedBox(height: 7.v),
                      Text("lbl_banking".tr,
                          style: theme.textTheme.displayMedium),
                      SizedBox(height: 29.v),
                      Container(
                          width: 294.h,
                          margin: EdgeInsets.symmetric(horizontal: 35.h),
                          child: Text("msg_we_help_our_user".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodyLargeGray600
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 79.v),
                      CustomElevatedButton(
                          text: "lbl_start_now".tr.toUpperCase(),
                          onPressed: () {
                            onTapStartNow();
                          })
                    ]))));
  }

  /// Navigates to the logInScreen when the action is triggered.
  onTapStartNow() {
    Get.toNamed(
      AppRoutes.logInScreen,
    );
  }
}
