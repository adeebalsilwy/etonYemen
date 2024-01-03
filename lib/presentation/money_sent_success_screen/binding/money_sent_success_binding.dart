import '../controller/money_sent_success_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MoneySentSuccessScreen.
///
/// This class ensures that the MoneySentSuccessController is created when the
/// MoneySentSuccessScreen is first loaded.
class MoneySentSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MoneySentSuccessController());
  }
}
