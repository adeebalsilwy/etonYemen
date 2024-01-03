import 'package:adeb_s_application3/core/app_export.dart';
import 'package:adeb_s_application3/presentation/receive_money_personal_page/models/receive_money_personal_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ReceiveMoneyPersonalPage.
///
/// This class manages the state of the ReceiveMoneyPersonalPage, including the
/// current receiveMoneyPersonalModelObj
class ReceiveMoneyPersonalController extends GetxController {
  ReceiveMoneyPersonalController(this.receiveMoneyPersonalModelObj);

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameInputFieldController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController countryInputFieldController = TextEditingController();

  TextEditingController amountInputFieldController = TextEditingController();

  TextEditingController currencyInputFieldController = TextEditingController();

  TextEditingController massageInputFieldController = TextEditingController();

  Rx<ReceiveMoneyPersonalModel> receiveMoneyPersonalModelObj;

  @override
  void onClose() {
    super.onClose();
    firstNameController.dispose();
    lastNameInputFieldController.dispose();
    emailController.dispose();
    countryInputFieldController.dispose();
    amountInputFieldController.dispose();
    currencyInputFieldController.dispose();
    massageInputFieldController.dispose();
  }

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.requestSentScreen,
    );
  }
}
