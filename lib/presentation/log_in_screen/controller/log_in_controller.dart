import 'package:adeb_s_application3/core/app_export.dart';
import 'package:adeb_s_application3/presentation/log_in_screen/models/log_in_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LogInScreen.
///
/// This class manages the state of the LogInScreen, including the
/// current logInModelObj
class LogInController extends GetxController {
  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LogInModel> logInModelObj = LogInModel().obs;

  @override
  void onClose() {
    super.onClose();
    phoneController.dispose();
    passwordController.dispose();
  }
}
