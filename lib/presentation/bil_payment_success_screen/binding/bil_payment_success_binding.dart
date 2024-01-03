import '../controller/bil_payment_success_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BilPaymentSuccessScreen.
///
/// This class ensures that the BilPaymentSuccessController is created when the
/// BilPaymentSuccessScreen is first loaded.
class BilPaymentSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BilPaymentSuccessController());
  }
}
