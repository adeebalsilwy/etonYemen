import 'package:adeb_s_application3/core/app_export.dart';
import 'package:adeb_s_application3/presentation/add_person_screen/models/add_person_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AddPersonScreen.
///
/// This class manages the state of the AddPersonScreen, including the
/// current addPersonModelObj
class AddPersonController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  Rx<AddPersonModel> addPersonModelObj = AddPersonModel().obs;

  Rx<bool> saveOnList = false.obs;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    cardNumberController.dispose();
  }

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.addCardOneScreen,
    );
  }
}
