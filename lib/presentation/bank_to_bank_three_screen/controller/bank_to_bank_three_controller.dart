import 'package:adeb_s_application3/core/app_export.dart';
import 'package:adeb_s_application3/presentation/bank_to_bank_three_screen/models/bank_to_bank_three_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

/// A controller class for the BankToBankThreeScreen.
///
/// This class manages the state of the BankToBankThreeScreen, including the
/// current bankToBankThreeModelObj
class BankToBankThreeController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<BankToBankThreeModel> bankToBankThreeModelObj = BankToBankThreeModel().obs;

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
      AppRoutes.moneySentSuccessScreen,
    );
  }
}
