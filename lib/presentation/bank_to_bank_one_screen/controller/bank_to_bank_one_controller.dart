import 'package:adeb_s_application3/core/app_export.dart';
import 'package:adeb_s_application3/presentation/bank_to_bank_one_screen/models/bank_to_bank_one_model.dart';

/// A controller class for the BankToBankOneScreen.
///
/// This class manages the state of the BankToBankOneScreen, including the
/// current bankToBankOneModelObj
class BankToBankOneController extends GetxController {
  Rx<BankToBankOneModel> bankToBankOneModelObj = BankToBankOneModel().obs;
}
