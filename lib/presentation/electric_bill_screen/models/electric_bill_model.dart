import '../../../core/app_export.dart';
import 'electricbill_item_model.dart';

/// This class defines the variables used in the [electric_bill_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ElectricBillModel {
  Rx<List<ElectricbillItemModel>> electricbillItemList = Rx([
    ElectricbillItemModel(
        jonathanAnderson: "Jonathan Anderson".obs,
        text: "1222 3443 9881 1222".obs,
        balance: "Balance".obs,
        price: " 31,250".obs)
  ]);
}
