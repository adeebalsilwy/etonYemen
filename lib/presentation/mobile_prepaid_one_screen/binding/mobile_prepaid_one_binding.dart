import '../controller/mobile_prepaid_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MobilePrepaidOneScreen.
///
/// This class ensures that the MobilePrepaidOneController is created when the
/// MobilePrepaidOneScreen is first loaded.
class MobilePrepaidOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MobilePrepaidOneController());
  }
}
