import 'controller/bank_to_bank_one_controller.dart';
import 'package:adeb_s_application3/core/app_export.dart';
import 'package:adeb_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:adeb_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:adeb_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:adeb_s_application3/widgets/custom_elevated_button.dart';
import 'package:adeb_s_application3/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class BankToBankOneScreen extends GetWidget<BankToBankOneController> {
  const BankToBankOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 33.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("msg_select_bank_to_send".tr,
                          style: CustomTextStyles.headlineSmallExtraBold),
                      SizedBox(height: 10.v),
                      Text("msg_select_a_account".tr,
                          style: theme.textTheme.bodyMedium),
                      SizedBox(height: 41.v),
                      _buildJonathanAnderson(),
                      SizedBox(height: 24.v),
                      _buildCard(),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildContinue()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 68.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgFavoriteOnprimary,
            margin: EdgeInsets.only(left: 24.h, top: 6.v, bottom: 6.v)),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_bank_to_bank2".tr));
  }

  /// Section Widget
  Widget _buildJonathanAnderson() {
    return SizedBox(
        height: 200.v,
        width: 366.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          _buildCard(),
          CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(13.h),
              decoration: IconButtonStyleHelper.fillOnPrimaryTL20,
              alignment: Alignment.bottomCenter,
              child:
                  CustomImageView(imagePath: ImageConstant.imgCheckmarkPrimary))
        ]));
  }

  /// Section Widget
  Widget _buildContinue() {
    return CustomElevatedButton(
        text: "lbl_continue".tr.toUpperCase(),
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 56.v),
        onPressed: () {
          onTapContinue();
        });
  }

  /// Common widget
  Widget _buildCard({Function? onTapCard}) {
    return GestureDetector(
        onTap: () {
          onTapCard!.call();
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 23.v),
            decoration: AppDecoration.gradientTealToTeal,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("msg_jonathan_anderson".tr,
                  style: theme.textTheme.labelLarge),
              SizedBox(height: 30.v),
              Text("msg_1222_3443_9881_1222".tr,
                  style: CustomTextStyles.titleMediumOnPrimary),
              SizedBox(height: 30.v),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_balance".tr,
                                  style: theme.textTheme.labelSmall),
                              SizedBox(height: 3.v),
                              Text("lbl_31_250".tr,
                                  style: theme.textTheme.labelLarge)
                            ])),
                    CustomImageView(
                        imagePath: ImageConstant.imgUser,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(top: 12.v))
                  ])
            ])));
  }

  /// Navigates to the cardDetailsScreen when the action is triggered.
  onTapCard() {
    Get.toNamed(
      AppRoutes.cardDetailsScreen,
    );
  }

  /// Navigates to the cardDetailsScreen when the action is triggered.
  onTapCard1() {
    Get.toNamed(
      AppRoutes.cardDetailsScreen,
    );
  }

  /// Navigates to the bankToBankTwoScreen when the action is triggered.
  onTapContinue() {
    Get.toNamed(
      AppRoutes.bankToBankTwoScreen,
    );
  }
}
