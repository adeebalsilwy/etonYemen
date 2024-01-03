import 'package:adeb_s_application3/core/app_export.dart';
import 'package:adeb_s_application3/presentation/cards_page/models/cards_model.dart';

/// A controller class for the CardsPage.
///
/// This class manages the state of the CardsPage, including the
/// current cardsModelObj
class CardsController extends GetxController {
  CardsController(this.cardsModelObj);

  Rx<CardsModel> cardsModelObj;
}
