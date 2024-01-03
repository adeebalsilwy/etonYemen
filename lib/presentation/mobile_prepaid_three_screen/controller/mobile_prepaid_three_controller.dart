import 'package:adeb_s_application3/core/app_export.dart';
import 'package:adeb_s_application3/presentation/mobile_prepaid_three_screen/models/mobile_prepaid_three_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

/// A controller class for the MobilePrepaidThreeScreen.
///
/// This class manages the state of the MobilePrepaidThreeScreen, including the
/// current mobilePrepaidThreeModelObj
class MobilePrepaidThreeController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<MobilePrepaidThreeModel> mobilePrepaidThreeModelObj =
      MobilePrepaidThreeModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.rechargeSuccessScreen,
    );
  }
}
