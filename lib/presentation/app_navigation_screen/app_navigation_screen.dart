import 'controller/app_navigation_controller.dart';
import 'package:adeb_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Splash".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Log In".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.logInScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home - Container".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Card Details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.cardDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Edit Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "History".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.historyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notifications".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Send Money".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.sendMoneyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Enter Money".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.enterMoneyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Send Money - Enter Password".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.sendMoneyEnterPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add Person".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addPersonScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add card#One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addCardOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment Success".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.paymentSuccessScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "Receive Money Request - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.receiveMoneyRequestTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Request sent".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.requestSentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Money Exchange".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.moneyExchangeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Pay Bill".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.payBillScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Electric Bill".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.electricBillScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Bil Payment Success".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.bilPaymentSuccessScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Bank To bank#One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.bankToBankOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Bank To bank#Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.bankToBankTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Bank To bank#Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.bankToBankThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Money Sent Success".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.moneySentSuccessScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Mobile Prepaid#One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.mobilePrepaidOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Mobile Prepaid#Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.mobilePrepaidTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Mobile Prepaid#Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.mobilePrepaidThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Recharge Success".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.rechargeSuccessScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
