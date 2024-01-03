import '../controller/pay_bill_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PayBillScreen.
///
/// This class ensures that the PayBillController is created when the
/// PayBillScreen is first loaded.
class PayBillBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PayBillController());
  }
}
