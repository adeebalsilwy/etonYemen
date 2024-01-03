import 'controller/add_card_one_controller.dart';
import 'package:adeb_s_application3/core/app_export.dart';
import 'package:adeb_s_application3/core/utils/validation_functions.dart';
import 'package:adeb_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:adeb_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:adeb_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:adeb_s_application3/widgets/custom_checkbox_button.dart';
import 'package:adeb_s_application3/widgets/custom_elevated_button.dart';
import 'package:adeb_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AddCardOneScreen extends GetWidget<AddCardOneController> {
  AddCardOneScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 21.h, vertical: 34.v),
                    child: Column(children: [
                      _buildInputField1(),
                      SizedBox(height: 19.v),
                      _buildInputField2(),
                      SizedBox(height: 19.v),
                      _buildFrame(),
                      SizedBox(height: 21.v),
                      _buildSaveMyCardDetails(),
                      SizedBox(height: 41.v),
                      CustomElevatedButton(
                          text: "lbl_save".tr.toUpperCase(),
                          margin: EdgeInsets.only(left: 6.h),
                          onPressed: () {
                            onTapSave();
                          }),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 68.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgFavoriteOnprimary,
            margin: EdgeInsets.only(left: 24.h, top: 6.v, bottom: 6.v)),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_new_card".tr));
  }

  /// Section Widget
  Widget _buildInputField1() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_name".tr, style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 11.v),
          CustomTextFormField(
              controller: controller.nameController,
              hintText: "lbl_user_name".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              })
        ]));
  }

  /// Section Widget
  Widget _buildInputField2() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_card_number".tr,
              style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 11.v),
          CustomTextFormField(
              controller: controller.cardNumberController,
              hintText: "lbl_card_number2".tr,
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
  Widget _buildInputField3() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(top: 1.v, right: 10.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("lbl_expires".tr,
                  style: CustomTextStyles.bodyLargeGray70001),
              SizedBox(height: 9.v),
              CustomTextFormField(
                  width: 173.h,
                  controller: controller.dateController,
                  hintText: "lbl_date".tr)
            ])));
  }

  /// Section Widget
  Widget _buildInputField4() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 10.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("lbl_cvv".tr, style: CustomTextStyles.bodyLargeGray70001),
              SizedBox(height: 11.v),
              CustomTextFormField(
                  width: 173.h,
                  controller: controller.cvvController,
                  hintText: "lbl_code".tr,
                  textInputAction: TextInputAction.done)
            ])));
  }

  /// Section Widget
  Widget _buildFrame() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildInputField3(), _buildInputField4()]));
  }

  /// Section Widget
  Widget _buildSaveMyCardDetails() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Obx(() => CustomCheckboxButton(
                alignment: Alignment.centerLeft,
                text: "msg_save_my_card_details".tr,
                value: controller.saveMyCardDetails.value,
                onChange: (value) {
                  controller.saveMyCardDetails.value = value;
                }))));
  }

  /// Navigates to the paymentSuccessScreen when the action is triggered.
  onTapSave() {
    Get.toNamed(
      AppRoutes.paymentSuccessScreen,
    );
  }
}
