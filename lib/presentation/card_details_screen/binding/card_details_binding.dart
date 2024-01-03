import '../controller/card_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CardDetailsScreen.
///
/// This class ensures that the CardDetailsController is created when the
/// CardDetailsScreen is first loaded.
class CardDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CardDetailsController());
  }
}
