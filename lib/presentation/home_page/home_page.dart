import '../home_page/widgets/optionssection_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'models/optionssection_item_model.dart';
import 'package:adeb_s_application3/core/app_export.dart';
import 'package:adeb_s_application3/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.bg,
                child: Column(children: [
                  SizedBox(height: 40.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 24.h, right: 24.h, bottom: 5.v),
                              child: Column(children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomIconButton(
                                              height: 44.adaptSize,
                                              width: 44.adaptSize,
                                              padding: EdgeInsets.all(10.h),
                                              child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgGrid)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 68.h,
                                                  top: 6.v,
                                                  bottom: 11.v),
                                              child: Text("lbl_welcome_back".tr,
                                                  style: theme
                                                      .textTheme.titleLarge))
                                        ])),
                                SizedBox(height: 40.v),
                                _buildTotalBalanceSection(),
                                SizedBox(height: 40.v),
                                _buildOptionsSection()
                              ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildTotalBalanceSection() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 104.h, vertical: 18.v),
        decoration: AppDecoration.fillPrimary,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("lbl_total_balance".tr,
              style: CustomTextStyles.bodyLargeOnPrimary),
          SizedBox(height: 4.v),
          Text("lbl_3_567_12".tr, style: CustomTextStyles.displaySmallOnPrimary)
        ]));
  }

  /// Section Widget
  Widget _buildOptionsSection() {
    return Obx(() => GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 199.v,
            crossAxisCount: 2,
            mainAxisSpacing: 24.h,
            crossAxisSpacing: 24.h),
        physics: NeverScrollableScrollPhysics(),
        itemCount:
            controller.homeModelObj.value.optionssectionItemList.value.length,
        itemBuilder: (context, index) {
          OptionssectionItemModel model =
              controller.homeModelObj.value.optionssectionItemList.value[index];
          return OptionssectionItemWidget(model, onTapOne: () {
            onTapOne();
          });
        }));
  }

  /// Navigates to the mobilePrepaidOneScreen when the action is triggered.
  onTapOne() {
    Get.toNamed(
      AppRoutes.mobilePrepaidOneScreen,
    );
  }
}
