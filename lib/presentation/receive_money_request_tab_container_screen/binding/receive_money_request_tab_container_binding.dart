import '../controller/receive_money_request_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ReceiveMoneyRequestTabContainerScreen.
///
/// This class ensures that the ReceiveMoneyRequestTabContainerController is created when the
/// ReceiveMoneyRequestTabContainerScreen is first loaded.
class ReceiveMoneyRequestTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReceiveMoneyRequestTabContainerController());
  }
}
