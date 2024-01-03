import '../controller/bank_to_bank_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BankToBankThreeScreen.
///
/// This class ensures that the BankToBankThreeController is created when the
/// BankToBankThreeScreen is first loaded.
class BankToBankThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BankToBankThreeController());
  }
}
