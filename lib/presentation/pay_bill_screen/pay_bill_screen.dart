import '../pay_bill_screen/widgets/paybill_item_widget.dart';
import 'controller/pay_bill_controller.dart';
import 'models/paybill_item_model.dart';
import 'package:adeb_s_application3/core/app_export.dart';
import 'package:adeb_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:adeb_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:adeb_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PayBillScreen extends GetWidget<PayBillController> {
  const PayBillScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Padding(
                padding: EdgeInsets.only(left: 24.h, top: 34.v, right: 24.h),
                child: Obx(() => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 223.v,
                        crossAxisCount: 2,
                        mainAxisSpacing: 24.h,
                        crossAxisSpacing: 24.h),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller
                        .payBillModelObj.value.paybillItemList.value.length,
                    itemBuilder: (context, index) {
                      PaybillItemModel model = controller
                          .payBillModelObj.value.paybillItemList.value[index];
                      return PaybillItemWidget(model, onTapOne: () {
                        onTapOne();
                      });
                    })))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 68.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgFavoriteOnprimary,
            margin: EdgeInsets.only(left: 24.h, top: 6.v, bottom: 6.v)),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_pay_bills2".tr));
  }

  /// Navigates to the electricBillScreen when the action is triggered.
  onTapOne() {
    Get.toNamed(AppRoutes.electricBillScreen);
  }
}
