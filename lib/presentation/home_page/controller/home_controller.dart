import 'package:adeb_s_application3/core/app_export.dart';
import 'package:adeb_s_application3/presentation/home_page/models/home_model.dart';

/// A controller class for the HomePage.
///
/// This class manages the state of the HomePage, including the
/// current homeModelObj
class HomeController extends GetxController {
  HomeController(this.homeModelObj);

  Rx<HomeModel> homeModelObj;
}
