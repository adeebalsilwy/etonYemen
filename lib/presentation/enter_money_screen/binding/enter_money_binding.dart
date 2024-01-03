import '../controller/enter_money_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EnterMoneyScreen.
///
/// This class ensures that the EnterMoneyController is created when the
/// EnterMoneyScreen is first loaded.
class EnterMoneyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EnterMoneyController());
  }
}
