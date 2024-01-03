import '../controller/recharge_success_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RechargeSuccessScreen.
///
/// This class ensures that the RechargeSuccessController is created when the
/// RechargeSuccessScreen is first loaded.
class RechargeSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RechargeSuccessController());
  }
}
