import '../controller/request_sent_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RequestSentScreen.
///
/// This class ensures that the RequestSentController is created when the
/// RequestSentScreen is first loaded.
class RequestSentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RequestSentController());
  }
}
