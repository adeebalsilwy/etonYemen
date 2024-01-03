import '../controller/electric_bill_controller.dart';
import '../models/electricbill_item_model.dart';
import 'package:adeb_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ElectricbillItemWidget extends StatelessWidget {
  ElectricbillItemWidget(
    this.electricbillItemModelObj, {
    Key? key,
    this.onTapCard,
  }) : super(
          key: key,
        );

  ElectricbillItemModel electricbillItemModelObj;

  var controller = Get.find<ElectricBillController>();

  VoidCallback? onTapCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 305.h,
      child: GestureDetector(
        onTap: () {
          onTapCard!.call();
        },
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 23.v,
          ),
          decoration: AppDecoration.gradientPrimaryToOnErrorContainer,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  electricbillItemModelObj.jonathanAnderson!.value,
                  style: theme.textTheme.labelLarge,
                ),
              ),
              SizedBox(height: 30.v),
              Obx(
                () => Text(
                  electricbillItemModelObj.text!.value,
                  style: CustomTextStyles.titleMediumOnPrimary,
                ),
              ),
              SizedBox(height: 30.v),
              Padding(
                padding: EdgeInsets.only(right: 4.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(
                            () => Text(
                              electricbillItemModelObj.balance!.value,
                              style: theme.textTheme.labelSmall,
                            ),
                          ),
                          SizedBox(height: 3.v),
                          Obx(
                            () => Text(
                              electricbillItemModelObj.price!.value,
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgUser,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      margin: EdgeInsets.only(
                        left: 193.h,
                        top: 12.v,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
