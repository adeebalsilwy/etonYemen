import '../../../core/app_export.dart';
import 'profilelist_item_model.dart';
import 'nineteen_item_model.dart';
import 'twentytwo_item_model.dart';

/// This class defines the variables used in the [send_money_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SendMoneyModel {
  Rx<List<ProfilelistItemModel>> profilelistItemList = Rx([
    ProfilelistItemModel(ellipse: ImageConstant.imgEllipse11.obs),
    ProfilelistItemModel(ellipse: ImageConstant.imgEllipse9.obs),
    ProfilelistItemModel(ellipse: ImageConstant.imgEllipse8.obs),
    ProfilelistItemModel(ellipse: ImageConstant.imgEllipse7.obs),
    ProfilelistItemModel(ellipse: ImageConstant.imgEllipse10.obs)
  ]);

  Rx<List<NineteenItemModel>> nineteenItemList = Rx([
    NineteenItemModel(
        angelinaDruff: ImageConstant.imgOval.obs,
        jenningsChamplin: "Angelina Druff".obs,
        jenningsChamplin1: "AC : 159-107-1396".obs,
        angelinaDruff1: ImageConstant.imgCheckmarkTeal300.obs),
    NineteenItemModel(
        angelinaDruff: ImageConstant.imgOval48x48.obs,
        jenningsChamplin: "Angelina Lan".obs,
        jenningsChamplin1: "AC : 159-107-1396".obs,
        angelinaDruff1: ImageConstant.imgCheckmarkGray400.obs)
  ]);

  Rx<List<TwentytwoItemModel>> twentytwoItemList = Rx([
    TwentytwoItemModel(
        belgeman: ImageConstant.imgOval1.obs,
        jenningsChamplin: "Belgeman".obs,
        jenningsChamplin1: "AC : 159-107-1396".obs),
    TwentytwoItemModel(
        belgeman: ImageConstant.imgOval2.obs,
        jenningsChamplin: "Brusly".obs,
        jenningsChamplin1: "AC : 159-107-1396".obs),
    TwentytwoItemModel(
        belgeman: ImageConstant.imgOval3.obs,
        jenningsChamplin: "Baminu".obs,
        jenningsChamplin1: "AC : 159-107-1396".obs)
  ]);
}
