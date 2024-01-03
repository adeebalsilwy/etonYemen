import '../../../core/app_export.dart';

/// This class is used in the [twentytwo_item_widget] screen.
class TwentytwoItemModel {
  TwentytwoItemModel({
    this.belgeman,
    this.jenningsChamplin,
    this.jenningsChamplin1,
    this.id,
  }) {
    belgeman = belgeman ?? Rx(ImageConstant.imgOval1);
    jenningsChamplin = jenningsChamplin ?? Rx("Belgeman");
    jenningsChamplin1 = jenningsChamplin1 ?? Rx("AC : 159-107-1396");
    id = id ?? Rx("");
  }

  Rx<String>? belgeman;

  Rx<String>? jenningsChamplin;

  Rx<String>? jenningsChamplin1;

  Rx<String>? id;
}
