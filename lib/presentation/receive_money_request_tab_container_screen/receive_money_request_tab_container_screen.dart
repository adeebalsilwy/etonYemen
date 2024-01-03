import 'controller/receive_money_request_tab_container_controller.dart';
import 'package:adeb_s_application3/core/app_export.dart';
import 'package:adeb_s_application3/presentation/receive_money_personal_page/receive_money_personal_page.dart';
import 'package:adeb_s_application3/presentation/receive_money_request_page/receive_money_request_page.dart';
import 'package:adeb_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:adeb_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:adeb_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ReceiveMoneyRequestTabContainerScreen
    extends GetWidget<ReceiveMoneyRequestTabContainerController> {
  const ReceiveMoneyRequestTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 34.v),
            child: Column(
              children: [
                _buildTabview(),
                SizedBox(
                  height: 1038.v,
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      ReceiveMoneyPersonalPage(),
                      ReceiveMoneyRequestPage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 68.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgFavoriteOnprimary,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 6.v,
          bottom: 6.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_money_request".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 65.v,
      width: 366.h,
      decoration: BoxDecoration(
        color: appTheme.gray300,
        borderRadius: BorderRadius.circular(
          8.h,
        ),
      ),
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onPrimary,
        labelStyle: TextStyle(
          fontSize: 20.fSize,
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w800,
        ),
        unselectedLabelColor: appTheme.gray500,
        unselectedLabelStyle: TextStyle(
          fontSize: 20.fSize,
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w800,
        ),
        indicatorPadding: EdgeInsets.all(
          10.0.h,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(
            4.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_personal".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_business".tr,
            ),
          ),
        ],
      ),
    );
  }
}
