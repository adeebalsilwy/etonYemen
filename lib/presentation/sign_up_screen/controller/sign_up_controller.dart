import 'package:adeb_s_application3/core/app_export.dart';
import 'package:adeb_s_application3/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpScreen.
///
/// This class manages the state of the SignUpScreen, including the
/// current signUpModelObj
class SignUpController extends GetxController {
  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  @override
  void onClose() {
    super.onClose();
    phoneController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
  }
}
