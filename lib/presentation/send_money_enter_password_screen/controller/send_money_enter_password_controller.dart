import 'package:adeb_s_application3/core/app_export.dart';
import 'package:adeb_s_application3/presentation/send_money_enter_password_screen/models/send_money_enter_password_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

/// A controller class for the SendMoneyEnterPasswordScreen.
///
/// This class manages the state of the SendMoneyEnterPasswordScreen, including the
/// current sendMoneyEnterPasswordModelObj
class SendMoneyEnterPasswordController extends GetxController
    with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<SendMoneyEnterPasswordModel> sendMoneyEnterPasswordModelObj =
      SendMoneyEnterPasswordModel().obs;

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
    // TODO: implement Actions
  }
}
