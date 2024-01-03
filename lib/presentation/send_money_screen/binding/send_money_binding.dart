import '../controller/send_money_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SendMoneyScreen.
///
/// This class ensures that the SendMoneyController is created when the
/// SendMoneyScreen is first loaded.
class SendMoneyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SendMoneyController());
  }
}
