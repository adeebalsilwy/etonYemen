import '../controller/money_exchange_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MoneyExchangeScreen.
///
/// This class ensures that the MoneyExchangeController is created when the
/// MoneyExchangeScreen is first loaded.
class MoneyExchangeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MoneyExchangeController());
  }
}
