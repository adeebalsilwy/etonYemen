import '../../../core/app_export.dart';
import 'cards_item_model.dart';

/// This class defines the variables used in the [cards_page],
/// and is typically used to hold data that is passed between different parts of the application.
class CardsModel {
  Rx<List<CardsItemModel>> cardsItemList = Rx([
    CardsItemModel(
        jonathanAnderson: "Jonathan Anderson".obs,
        text: "1222 3443 9881 1222".obs,
        balance: "Balance".obs,
        price: " 31,250".obs),
    CardsItemModel(
        jonathanAnderson: "Jonathan Anderson".obs,
        text: "1222 3443 9881 1222".obs,
        balance: "Balance".obs,
        price: " 31,250".obs)
  ]);
}
