import '../send_money_screen/widgets/nineteen_item_widget.dart';
import '../send_money_screen/widgets/profilelist_item_widget.dart';
import '../send_money_screen/widgets/twentytwo_item_widget.dart';
import 'controller/send_money_controller.dart';
import 'models/nineteen_item_model.dart';
import 'models/profilelist_item_model.dart';
import 'models/twentytwo_item_model.dart';
import 'package:adeb_s_application3/core/app_export.dart';
import 'package:adeb_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:adeb_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:adeb_s_application3/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:adeb_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SendMoneyScreen extends GetWidget<SendMoneyController> {
  const SendMoneyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 33.v),
                child: Column(children: [
                  _buildThirtyEight(),
                  SizedBox(height: 39.v),
                  _buildForty(),
                  SizedBox(height: 24.v),
                  _buildFavorite(),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 68.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgFavoriteOnprimary,
            margin: EdgeInsets.only(left: 24.h, top: 6.v, bottom: 6.v)),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_money_transfer".tr),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgPlus,
              margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 6.v),
              onTap: () {
                onTapPlus();
              })
        ]);
  }

  /// Section Widget
  Widget _buildThirtyEight() {
    return Padding(
        padding: EdgeInsets.only(left: 14.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_favorite".tr, style: theme.textTheme.headlineSmall),
          SizedBox(height: 17.v),
          SizedBox(
              height: 60.v,
              child: Obx(() => ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 20.h);
                  },
                  itemCount: controller
                      .sendMoneyModelObj.value.profilelistItemList.value.length,
                  itemBuilder: (context, index) {
                    ProfilelistItemModel model = controller.sendMoneyModelObj
                        .value.profilelistItemList.value[index];
                    return ProfilelistItemWidget(model);
                  })))
        ]));
  }

  /// Section Widget
  Widget _buildForty() {
    return Padding(
        padding: EdgeInsets.only(left: 14.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_all_contact".tr, style: theme.textTheme.headlineSmall),
          SizedBox(height: 25.v),
          Container(
              margin: EdgeInsets.only(right: 14.h),
              padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.v),
              decoration: AppDecoration.white,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("lbl_a".tr, style: theme.textTheme.headlineMedium),
                    SizedBox(height: 9.v),
                    Divider(color: appTheme.gray400),
                    SizedBox(height: 19.v),
                    Obx(() => ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 16.v);
                        },
                        itemCount: controller.sendMoneyModelObj.value
                            .nineteenItemList.value.length,
                        itemBuilder: (context, index) {
                          NineteenItemModel model = controller.sendMoneyModelObj
                              .value.nineteenItemList.value[index];
                          return NineteenItemWidget(model,
                              onTapAngelinaDruff: () {
                            onTapAngelinaDruff();
                          });
                        })),
                    SizedBox(height: 3.v)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildFavorite() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 14.h),
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.v),
        decoration: AppDecoration.white,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("lbl_b".tr, style: theme.textTheme.headlineMedium),
          SizedBox(height: 9.v),
          Divider(color: appTheme.gray400),
          SizedBox(height: 19.v),
          Obx(() => ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 16.v);
              },
              itemCount: controller
                  .sendMoneyModelObj.value.twentytwoItemList.value.length,
              itemBuilder: (context, index) {
                TwentytwoItemModel model = controller
                    .sendMoneyModelObj.value.twentytwoItemList.value[index];
                return TwentytwoItemWidget(model);
              })),
          SizedBox(height: 3.v)
        ]));
  }

  /// Navigates to the enterMoneyScreen when the action is triggered.
  onTapAngelinaDruff() {
    Get.toNamed(AppRoutes.enterMoneyScreen);
  }

  /// Navigates to the addPersonScreen when the action is triggered.
  onTapPlus() {
    Get.toNamed(
      AppRoutes.addPersonScreen,
    );
  }
}
