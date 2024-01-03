import '../../../core/app_export.dart';

/// This class is used in the [carddetailslist_item_widget] screen.
class CarddetailslistItemModel {
  CarddetailslistItemModel({
    this.cart,
    this.shopping,
    this.time,
    this.price,
    this.id,
  }) {
    cart = cart ?? Rx(ImageConstant.imgCart);
    shopping = shopping ?? Rx("Shopping");
    time = time ?? Rx("3:41 pm");
    price = price ?? Rx("-50.35");
    id = id ?? Rx("");
  }

  Rx<String>? cart;

  Rx<String>? shopping;

  Rx<String>? time;

  Rx<String>? price;

  Rx<String>? id;
}
