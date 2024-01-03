import 'package:adeb_s_application3/core/app_export.dart';
import 'package:adeb_s_application3/presentation/receive_money_request_tab_container_screen/models/receive_money_request_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ReceiveMoneyRequestTabContainerScreen.
///
/// This class manages the state of the ReceiveMoneyRequestTabContainerScreen, including the
/// current receiveMoneyRequestTabContainerModelObj
class ReceiveMoneyRequestTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<ReceiveMoneyRequestTabContainerModel>
      receiveMoneyRequestTabContainerModelObj =
      ReceiveMoneyRequestTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
