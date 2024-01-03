import '../controller/send_money_enter_password_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SendMoneyEnterPasswordScreen.
///
/// This class ensures that the SendMoneyEnterPasswordController is created when the
/// SendMoneyEnterPasswordScreen is first loaded.
class SendMoneyEnterPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SendMoneyEnterPasswordController());
  }
}
