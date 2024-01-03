import '../../../core/app_export.dart';
import 'paybill_item_model.dart';

/// This class defines the variables used in the [pay_bill_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PayBillModel {
  Rx<List<PaybillItemModel>> paybillItemList = Rx([
    PaybillItemModel(
        electricityBill: ImageConstant.imgUserYellowA400.obs,
        electricityBill1: "Electricity\nBill".obs,
        card: "Pay bill of this month".obs),
    PaybillItemModel(
        electricityBill: ImageConstant.imgVideoCamera.obs,
        electricityBill1: "Water\nBill".obs,
        card: "Pay bill of this month".obs),
    PaybillItemModel(
        electricityBill: ImageConstant.imgForward.obs,
        electricityBill1: "Network\nBill".obs,
        card: "Pay bill of this month".obs)
  ]);
}
