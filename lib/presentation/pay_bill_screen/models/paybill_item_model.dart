import '../../../core/app_export.dart';

/// This class is used in the [paybill_item_widget] screen.
class PaybillItemModel {
  PaybillItemModel({
    this.electricityBill,
    this.electricityBill1,
    this.card,
    this.id,
  }) {
    electricityBill = electricityBill ?? Rx(ImageConstant.imgUserYellowA400);
    electricityBill1 = electricityBill1 ?? Rx("Electricity\nBill");
    card = card ?? Rx("Pay bill of this month");
    id = id ?? Rx("");
  }

  Rx<String>? electricityBill;

  Rx<String>? electricityBill1;

  Rx<String>? card;

  Rx<String>? id;
}
