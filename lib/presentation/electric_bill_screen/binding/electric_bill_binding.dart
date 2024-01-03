import '../controller/electric_bill_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ElectricBillScreen.
///
/// This class ensures that the ElectricBillController is created when the
/// ElectricBillScreen is first loaded.
class ElectricBillBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ElectricBillController());
  }
}
