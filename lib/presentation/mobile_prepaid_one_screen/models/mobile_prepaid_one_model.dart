import '../../../core/app_export.dart';
import 'profilelist1_item_model.dart';
import 'fortytwo_item_model.dart';
import 'thirtyseven_item_model.dart';

/// This class defines the variables used in the [mobile_prepaid_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MobilePrepaidOneModel {
  Rx<List<Profilelist1ItemModel>> profilelist1ItemList = Rx([
    Profilelist1ItemModel(ellipse: ImageConstant.imgEllipse11.obs),
    Profilelist1ItemModel(ellipse: ImageConstant.imgEllipse9.obs),
    Profilelist1ItemModel(ellipse: ImageConstant.imgEllipse8.obs),
    Profilelist1ItemModel(ellipse: ImageConstant.imgEllipse7.obs),
    Profilelist1ItemModel(ellipse: ImageConstant.imgEllipse10.obs)
  ]);

  Rx<List<FortytwoItemModel>> fortytwoItemList = Rx([
    FortytwoItemModel(
        angelinaDruff: ImageConstant.imgOval.obs,
        jenningsChamplin: "Angelina Druff".obs,
        jenningsChamplin1: "AC : 159-107-1396".obs,
        angelinaDruff1: ImageConstant.imgCheckmarkTeal300.obs),
    FortytwoItemModel(
        angelinaDruff: ImageConstant.imgOval48x48.obs,
        jenningsChamplin: "Angelina Lan".obs,
        jenningsChamplin1: "AC : 159-107-1396".obs,
        angelinaDruff1: ImageConstant.imgCheckmarkGray400.obs)
  ]);

  Rx<List<ThirtysevenItemModel>> thirtysevenItemList = Rx([
    ThirtysevenItemModel(
        belgeman: ImageConstant.imgOval1.obs,
        jenningsChamplin: "Belgeman".obs,
        jenningsChamplin1: "AC : 159-107-1396".obs),
    ThirtysevenItemModel(
        belgeman: ImageConstant.imgOval2.obs,
        jenningsChamplin: "Brusly".obs,
        jenningsChamplin1: "AC : 159-107-1396".obs)
  ]);
}
