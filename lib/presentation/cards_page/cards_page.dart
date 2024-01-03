import '../cards_page/widgets/cards_item_widget.dart';
import 'controller/cards_controller.dart';
import 'models/cards_item_model.dart';
import 'models/cards_model.dart';
import 'package:adeb_s_application3/core/app_export.dart';
import 'package:adeb_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:adeb_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:adeb_s_application3/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:adeb_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CardsPage extends StatelessWidget {
  CardsPage({Key? key}) : super(key: key);

  CardsController controller = Get.put(CardsController(CardsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.bg,
                child: Column(children: [
                  SizedBox(height: 34.v),
                  _buildCards(),
                  Spacer()
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
        title: AppbarTitle(text: "lbl_your_cards".tr),
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
  Widget _buildCards() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 36.v);
            },
            itemCount:
                controller.cardsModelObj.value.cardsItemList.value.length,
            itemBuilder: (context, index) {
              CardsItemModel model =
                  controller.cardsModelObj.value.cardsItemList.value[index];
              return CardsItemWidget(model, onTapCard: () {
                onTapCard();
              });
            })));
  }

  /// Navigates to the cardDetailsScreen when the action is triggered.
  onTapCard() {
    Get.toNamed(AppRoutes.cardDetailsScreen);
  }

  /// Navigates to the addCardOneScreen when the action is triggered.
  onTapPlus() {
    Get.toNamed(
      AppRoutes.addCardOneScreen,
    );
  }
}
