import '../../../core/app_export.dart';

/// This class is used in the [cards_item_widget] screen.
class CardsItemModel {
  CardsItemModel({
    this.jonathanAnderson,
    this.text,
    this.balance,
    this.price,
    this.id,
  }) {
    jonathanAnderson = jonathanAnderson ?? Rx("Jonathan Anderson");
    text = text ?? Rx("1222 3443 9881 1222");
    balance = balance ?? Rx("Balance");
    price = price ?? Rx(" 31,250");
    id = id ?? Rx("");
  }

  Rx<String>? jonathanAnderson;

  Rx<String>? text;

  Rx<String>? balance;

  Rx<String>? price;

  Rx<String>? id;
}
