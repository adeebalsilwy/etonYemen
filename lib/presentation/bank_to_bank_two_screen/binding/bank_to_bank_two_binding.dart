import '../controller/bank_to_bank_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BankToBankTwoScreen.
///
/// This class ensures that the BankToBankTwoController is created when the
/// BankToBankTwoScreen is first loaded.
class BankToBankTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BankToBankTwoController());
  }
}
