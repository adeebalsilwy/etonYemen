import '../controller/mobile_prepaid_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MobilePrepaidTwoScreen.
///
/// This class ensures that the MobilePrepaidTwoController is created when the
/// MobilePrepaidTwoScreen is first loaded.
class MobilePrepaidTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MobilePrepaidTwoController());
  }
}
