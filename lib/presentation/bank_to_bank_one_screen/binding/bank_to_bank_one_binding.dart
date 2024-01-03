import '../controller/bank_to_bank_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BankToBankOneScreen.
///
/// This class ensures that the BankToBankOneController is created when the
/// BankToBankOneScreen is first loaded.
class BankToBankOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BankToBankOneController());
  }
}
