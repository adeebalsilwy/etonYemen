import '../controller/add_card_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddCardOneScreen.
///
/// This class ensures that the AddCardOneController is created when the
/// AddCardOneScreen is first loaded.
class AddCardOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddCardOneController());
  }
}
