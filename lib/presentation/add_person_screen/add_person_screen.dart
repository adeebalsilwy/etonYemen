import 'controller/add_person_controller.dart';
import 'package:adeb_s_application3/core/app_export.dart';
import 'package:adeb_s_application3/core/utils/validation_functions.dart';
import 'package:adeb_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:adeb_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:adeb_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:adeb_s_application3/widgets/custom_checkbox_button.dart';
import 'package:adeb_s_application3/widgets/custom_elevated_button.dart';
import 'package:adeb_s_application3/widgets/custom_icon_button.dart';
import 'package:adeb_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AddPersonScreen extends GetWidget<AddPersonController> {
  AddPersonScreen({Key? key}) : super(key: key);

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
                        EdgeInsets.symmetric(horizontal: 24.h, vertical: 34.v),
                    child: Column(children: [
                      SizedBox(
                          height: 100.adaptSize,
                          width: 100.adaptSize,
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: 100.adaptSize,
                                        width: 100.adaptSize,
                                        decoration: BoxDecoration(
                                            color: appTheme.gray300,
                                            borderRadius:
                                                BorderRadius.circular(50.h)))),
                                CustomIconButton(
                                    height: 30.adaptSize,
                                    width: 30.adaptSize,
                                    padding: EdgeInsets.all(9.h),
                                    alignment: Alignment.bottomRight,
                                    child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgGroup18117)),
                                CustomImageView(
                                    imagePath: ImageConstant.img1Avatar,
                                    height: 32.adaptSize,
                                    width: 32.adaptSize,
                                    alignment: Alignment.center)
                              ])),
                      SizedBox(height: 40.v),
                      _buildInputField1(),
                      SizedBox(height: 19.v),
                      _buildInputField2(),
                      SizedBox(height: 19.v),
                      _buildSaveOnList(),
                      SizedBox(height: 43.v),
                      CustomElevatedButton(
                          text: "lbl_save".tr.toUpperCase(),
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
        title: AppbarTitle(text: "lbl_new_contact".tr));
  }

  /// Section Widget
  Widget _buildInputField1() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
    ]);
  }

  /// Section Widget
  Widget _buildInputField2() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_card_number".tr, style: CustomTextStyles.bodyLargeGray70001),
      SizedBox(height: 11.v),
      CustomTextFormField(
          controller: controller.cardNumberController,
          hintText: "lbl_card_number2".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.number,
          validator: (value) {
            if (!isNumeric(value)) {
              return "err_msg_please_enter_valid_number".tr;
            }
            return null;
          })
    ]);
  }

  /// Section Widget
  Widget _buildSaveOnList() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Obx(() => CustomCheckboxButton(
            alignment: Alignment.centerLeft,
            text: "lbl_save_on_list".tr,
            value: controller.saveOnList.value,
            onChange: (value) {
              controller.saveOnList.value = value;
            })));
  }

  /// Navigates to the addCardOneScreen when the action is triggered.
  onTapSave() {
    Get.toNamed(
      AppRoutes.addCardOneScreen,
    );
  }
}
