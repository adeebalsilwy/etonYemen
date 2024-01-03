import 'package:adeb_s_application3/core/app_export.dart';
import 'package:adeb_s_application3/presentation/electric_bill_screen/models/electric_bill_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ElectricBillScreen.
///
/// This class manages the state of the ElectricBillScreen, including the
/// current electricBillModelObj
class ElectricBillController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController inputsController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController dateController1 = TextEditingController();

  Rx<ElectricBillModel> electricBillModelObj = ElectricBillModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    addressController.dispose();
    phoneController.dispose();
    inputsController.dispose();
    dateController.dispose();
    dateController1.dispose();
  }

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.bilPaymentSuccessScreen,
    );
  }
}
