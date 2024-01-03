import '../controller/pay_bill_controller.dart';
import '../models/paybill_item_model.dart';
import 'package:adeb_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PaybillItemWidget extends StatelessWidget {
  PaybillItemWidget(
    this.paybillItemModelObj, {
    Key? key,
    this.onTapOne,
  }) : super(
          key: key,
        );

  PaybillItemModel paybillItemModelObj;

  var controller = Get.find<PayBillController>();

  VoidCallback? onTapOne;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapOne!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 23.v,
        ),
        decoration: AppDecoration.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => CustomImageView(
                imagePath: paybillItemModelObj.electricityBill!.value,
                height: 36.adaptSize,
                width: 36.adaptSize,
              ),
            ),
            SizedBox(height: 20.v),
            SizedBox(
              width: 97.h,
              child: Obx(
                () => Text(
                  paybillItemModelObj.electricityBill1!.value,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleLarge!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
            ),
            SizedBox(height: 9.v),
            SizedBox(
              width: 100.h,
              child: Obx(
                () => Text(
                  paybillItemModelObj.card!.value,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLarge16.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
