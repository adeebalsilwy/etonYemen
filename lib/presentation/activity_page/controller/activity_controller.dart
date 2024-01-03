import 'package:adeb_s_application3/core/app_export.dart';
import 'package:adeb_s_application3/presentation/activity_page/models/activity_model.dart';

/// A controller class for the ActivityPage.
///
/// This class manages the state of the ActivityPage, including the
/// current activityModelObj
class ActivityController extends GetxController {
  ActivityController(this.activityModelObj);

  Rx<ActivityModel> activityModelObj;
}
