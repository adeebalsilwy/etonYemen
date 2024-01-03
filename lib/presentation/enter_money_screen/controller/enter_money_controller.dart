import 'package:adeb_s_application3/core/app_export.dart';
import 'package:adeb_s_application3/presentation/enter_money_screen/models/enter_money_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the EnterMoneyScreen.
///
/// This class manages the state of the EnterMoneyScreen, including the
/// current enterMoneyModelObj
class EnterMoneyController extends GetxController {
  TextEditingController messageController = TextEditingController();

  Rx<EnterMoneyModel> enterMoneyModelObj = EnterMoneyModel().obs;

  @override
  void onClose() {
    super.onClose();
    messageController.dispose();
  }
}
