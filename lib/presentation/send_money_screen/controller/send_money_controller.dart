import 'package:adeb_s_application3/core/app_export.dart';
import 'package:adeb_s_application3/presentation/send_money_screen/models/send_money_model.dart';

/// A controller class for the SendMoneyScreen.
///
/// This class manages the state of the SendMoneyScreen, including the
/// current sendMoneyModelObj
class SendMoneyController extends GetxController {
  Rx<SendMoneyModel> sendMoneyModelObj = SendMoneyModel().obs;

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.enterMoneyScreen,
    );
  }
}
