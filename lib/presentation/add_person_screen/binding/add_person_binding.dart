import '../controller/add_person_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddPersonScreen.
///
/// This class ensures that the AddPersonController is created when the
/// AddPersonScreen is first loaded.
class AddPersonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddPersonController());
  }
}
