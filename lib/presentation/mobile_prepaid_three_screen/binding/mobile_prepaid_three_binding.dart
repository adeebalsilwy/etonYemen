import '../controller/mobile_prepaid_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MobilePrepaidThreeScreen.
///
/// This class ensures that the MobilePrepaidThreeController is created when the
/// MobilePrepaidThreeScreen is first loaded.
class MobilePrepaidThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MobilePrepaidThreeController());
  }
}
