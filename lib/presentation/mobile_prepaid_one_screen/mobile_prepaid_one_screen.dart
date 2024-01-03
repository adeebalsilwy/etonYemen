import '../mobile_prepaid_one_screen/widgets/fortytwo_item_widget.dart';
import '../mobile_prepaid_one_screen/widgets/profilelist1_item_widget.dart';
import '../mobile_prepaid_one_screen/widgets/thirtyseven_item_widget.dart';
import 'controller/mobile_prepaid_one_controller.dart';
import 'models/fortytwo_item_model.dart';
import 'models/profilelist1_item_model.dart';
import 'models/thirtyseven_item_model.dart';
import 'package:adeb_s_application3/core/app_export.dart';
import 'package:adeb_s_application3/core/utils/validation_functions.dart';
import 'package:adeb_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:adeb_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:adeb_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:adeb_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MobilePrepaidOneScreen extends GetWidget<MobilePrepaidOneController> {
  MobilePrepaidOneScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 35.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 24.h, right: 10.h),
                        child: Column(children: [
                          _buildInputField(),
                          SizedBox(height: 39.v),
                          _buildRecent(),
                          SizedBox(height: 39.v),
                          _buildSeventyOne(),
                          SizedBox(height: 24.v),
                          _buildB()
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 68.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgFavoriteOnprimary,
            margin: EdgeInsets.only(left: 24.h, top: 6.v, bottom: 6.v)),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_mobile_prepaid2".tr));
  }

  /// Section Widget
  Widget _buildInputField() {
    return Padding(
        padding: EdgeInsets.only(left: 3.h, right: 11.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_prepaid_to".tr, style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 9.v),
          CustomTextFormField(
              controller: controller.nameController,
              hintText: "lbl_name_or_number".tr,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.number,
              validator: (value) {
                if (!isNumeric(value)) {
                  return "err_msg_please_enter_valid_number".tr;
                }
                return null;
              })
        ]));
  }

  /// Section Widget
  Widget _buildRecent() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_recent".tr, style: theme.textTheme.headlineSmall),
      SizedBox(height: 17.v),
      SizedBox(
          height: 60.v,
          child: Obx(() => ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 20.h);
              },
              itemCount: controller.mobilePrepaidOneModelObj.value
                  .profilelist1ItemList.value.length,
              itemBuilder: (context, index) {
                Profilelist1ItemModel model = controller
                    .mobilePrepaidOneModelObj
                    .value
                    .profilelist1ItemList
                    .value[index];
                return Profilelist1ItemWidget(model);
              })))
    ]);
  }

  /// Section Widget
  Widget _buildSeventyOne() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_all_contact".tr, style: theme.textTheme.headlineSmall),
      SizedBox(height: 25.v),
      Container(
          margin: EdgeInsets.only(right: 14.h),
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.v),
          decoration: AppDecoration.white,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                itemCount: controller.mobilePrepaidOneModelObj.value
                    .fortytwoItemList.value.length,
                itemBuilder: (context, index) {
                  FortytwoItemModel model = controller.mobilePrepaidOneModelObj
                      .value.fortytwoItemList.value[index];
                  return FortytwoItemWidget(model, onTapAngelinaDruff: () {
                    onTapAngelinaDruff();
                  });
                })),
            SizedBox(height: 3.v)
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildSixtyOne() {
    return Column(children: [
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
              .mobilePrepaidOneModelObj.value.thirtysevenItemList.value.length,
          itemBuilder: (context, index) {
            ThirtysevenItemModel model = controller.mobilePrepaidOneModelObj
                .value.thirtysevenItemList.value[index];
            return ThirtysevenItemWidget(model);
          }))
    ]);
  }

  /// Section Widget
  Widget _buildB() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Container(
            margin: EdgeInsets.only(right: 14.h),
            padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.v),
            decoration: AppDecoration.white,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              _buildSixtyOne(),
              SizedBox(height: 16.v),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgOval3,
                    height: 48.adaptSize,
                    width: 48.adaptSize,
                    radius: BorderRadius.circular(24.h)),
                Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lbl_baminu".tr,
                              style: theme.textTheme.titleMedium),
                          SizedBox(height: 2.v),
                          Text("msg_ac_159_107_1396".tr,
                              style:
                                  CustomTextStyles.bodySmallOnPrimaryContainer)
                        ])),
                Spacer(),
                CustomImageView(
                    imagePath: ImageConstant.imgCheckmarkGray400,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 12.v))
              ]),
              SizedBox(height: 3.v)
            ])));
  }

  /// Navigates to the enterMoneyScreen when the action is triggered.
  onTapAngelinaDruff() {
    Get.toNamed(AppRoutes.enterMoneyScreen);
  }
}
