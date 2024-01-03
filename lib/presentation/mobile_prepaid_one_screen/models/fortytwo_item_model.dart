import '../../../core/app_export.dart';

/// This class is used in the [fortytwo_item_widget] screen.
class FortytwoItemModel {
  FortytwoItemModel({
    this.angelinaDruff,
    this.jenningsChamplin,
    this.jenningsChamplin1,
    this.angelinaDruff1,
    this.id,
  }) {
    angelinaDruff = angelinaDruff ?? Rx(ImageConstant.imgOval);
    jenningsChamplin = jenningsChamplin ?? Rx("Angelina Druff");
    jenningsChamplin1 = jenningsChamplin1 ?? Rx("AC : 159-107-1396");
    angelinaDruff1 = angelinaDruff1 ?? Rx(ImageConstant.imgCheckmarkTeal300);
    id = id ?? Rx("");
  }

  Rx<String>? angelinaDruff;

  Rx<String>? jenningsChamplin;

  Rx<String>? jenningsChamplin1;

  Rx<String>? angelinaDruff1;

  Rx<String>? id;
}
