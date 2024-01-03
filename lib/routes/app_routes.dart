import 'package:adeb_s_application3/presentation/splash_screen/splash_screen.dart';
import 'package:adeb_s_application3/presentation/splash_screen/binding/splash_binding.dart';
import 'package:adeb_s_application3/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:adeb_s_application3/presentation/onboarding_screen/binding/onboarding_binding.dart';
import 'package:adeb_s_application3/presentation/log_in_screen/log_in_screen.dart';
import 'package:adeb_s_application3/presentation/log_in_screen/binding/log_in_binding.dart';
import 'package:adeb_s_application3/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:adeb_s_application3/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:adeb_s_application3/presentation/home_container_screen/home_container_screen.dart';
import 'package:adeb_s_application3/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:adeb_s_application3/presentation/card_details_screen/card_details_screen.dart';
import 'package:adeb_s_application3/presentation/card_details_screen/binding/card_details_binding.dart';
import 'package:adeb_s_application3/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:adeb_s_application3/presentation/edit_profile_screen/binding/edit_profile_binding.dart';
import 'package:adeb_s_application3/presentation/history_screen/history_screen.dart';
import 'package:adeb_s_application3/presentation/history_screen/binding/history_binding.dart';
import 'package:adeb_s_application3/presentation/notifications_screen/notifications_screen.dart';
import 'package:adeb_s_application3/presentation/notifications_screen/binding/notifications_binding.dart';
import 'package:adeb_s_application3/presentation/send_money_screen/send_money_screen.dart';
import 'package:adeb_s_application3/presentation/send_money_screen/binding/send_money_binding.dart';
import 'package:adeb_s_application3/presentation/enter_money_screen/enter_money_screen.dart';
import 'package:adeb_s_application3/presentation/enter_money_screen/binding/enter_money_binding.dart';
import 'package:adeb_s_application3/presentation/send_money_enter_password_screen/send_money_enter_password_screen.dart';
import 'package:adeb_s_application3/presentation/send_money_enter_password_screen/binding/send_money_enter_password_binding.dart';
import 'package:adeb_s_application3/presentation/add_person_screen/add_person_screen.dart';
import 'package:adeb_s_application3/presentation/add_person_screen/binding/add_person_binding.dart';
import 'package:adeb_s_application3/presentation/add_card_one_screen/add_card_one_screen.dart';
import 'package:adeb_s_application3/presentation/add_card_one_screen/binding/add_card_one_binding.dart';
import 'package:adeb_s_application3/presentation/payment_success_screen/payment_success_screen.dart';
import 'package:adeb_s_application3/presentation/payment_success_screen/binding/payment_success_binding.dart';
import 'package:adeb_s_application3/presentation/receive_money_request_tab_container_screen/receive_money_request_tab_container_screen.dart';
import 'package:adeb_s_application3/presentation/receive_money_request_tab_container_screen/binding/receive_money_request_tab_container_binding.dart';
import 'package:adeb_s_application3/presentation/request_sent_screen/request_sent_screen.dart';
import 'package:adeb_s_application3/presentation/request_sent_screen/binding/request_sent_binding.dart';
import 'package:adeb_s_application3/presentation/money_exchange_screen/money_exchange_screen.dart';
import 'package:adeb_s_application3/presentation/money_exchange_screen/binding/money_exchange_binding.dart';
import 'package:adeb_s_application3/presentation/pay_bill_screen/pay_bill_screen.dart';
import 'package:adeb_s_application3/presentation/pay_bill_screen/binding/pay_bill_binding.dart';
import 'package:adeb_s_application3/presentation/electric_bill_screen/electric_bill_screen.dart';
import 'package:adeb_s_application3/presentation/electric_bill_screen/binding/electric_bill_binding.dart';
import 'package:adeb_s_application3/presentation/bil_payment_success_screen/bil_payment_success_screen.dart';
import 'package:adeb_s_application3/presentation/bil_payment_success_screen/binding/bil_payment_success_binding.dart';
import 'package:adeb_s_application3/presentation/bank_to_bank_one_screen/bank_to_bank_one_screen.dart';
import 'package:adeb_s_application3/presentation/bank_to_bank_one_screen/binding/bank_to_bank_one_binding.dart';
import 'package:adeb_s_application3/presentation/bank_to_bank_two_screen/bank_to_bank_two_screen.dart';
import 'package:adeb_s_application3/presentation/bank_to_bank_two_screen/binding/bank_to_bank_two_binding.dart';
import 'package:adeb_s_application3/presentation/bank_to_bank_three_screen/bank_to_bank_three_screen.dart';
import 'package:adeb_s_application3/presentation/bank_to_bank_three_screen/binding/bank_to_bank_three_binding.dart';
import 'package:adeb_s_application3/presentation/money_sent_success_screen/money_sent_success_screen.dart';
import 'package:adeb_s_application3/presentation/money_sent_success_screen/binding/money_sent_success_binding.dart';
import 'package:adeb_s_application3/presentation/mobile_prepaid_one_screen/mobile_prepaid_one_screen.dart';
import 'package:adeb_s_application3/presentation/mobile_prepaid_one_screen/binding/mobile_prepaid_one_binding.dart';
import 'package:adeb_s_application3/presentation/mobile_prepaid_two_screen/mobile_prepaid_two_screen.dart';
import 'package:adeb_s_application3/presentation/mobile_prepaid_two_screen/binding/mobile_prepaid_two_binding.dart';
import 'package:adeb_s_application3/presentation/mobile_prepaid_three_screen/mobile_prepaid_three_screen.dart';
import 'package:adeb_s_application3/presentation/mobile_prepaid_three_screen/binding/mobile_prepaid_three_binding.dart';
import 'package:adeb_s_application3/presentation/recharge_success_screen/recharge_success_screen.dart';
import 'package:adeb_s_application3/presentation/recharge_success_screen/binding/recharge_success_binding.dart';
import 'package:adeb_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:adeb_s_application3/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String logInScreen = '/log_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String cardsPage = '/cards_page';

  static const String cardDetailsScreen = '/card_details_screen';

  static const String activityPage = '/activity_page';

  static const String profilePage = '/profile_page';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String historyScreen = '/history_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String sendMoneyScreen = '/send_money_screen';

  static const String enterMoneyScreen = '/enter_money_screen';

  static const String sendMoneyEnterPasswordScreen =
      '/send_money_enter_password_screen';

  static const String addPersonScreen = '/add_person_screen';

  static const String addCardOneScreen = '/add_card_one_screen';

  static const String paymentSuccessScreen = '/payment_success_screen';

  static const String receiveMoneyPersonalPage = '/receive_money_personal_page';

  static const String receiveMoneyRequestPage = '/receive_money_request_page';

  static const String receiveMoneyRequestTabContainerScreen =
      '/receive_money_request_tab_container_screen';

  static const String requestSentScreen = '/request_sent_screen';

  static const String moneyExchangeScreen = '/money_exchange_screen';

  static const String payBillScreen = '/pay_bill_screen';

  static const String electricBillScreen = '/electric_bill_screen';

  static const String bilPaymentSuccessScreen = '/bil_payment_success_screen';

  static const String bankToBankOneScreen = '/bank_to_bank_one_screen';

  static const String bankToBankTwoScreen = '/bank_to_bank_two_screen';

  static const String bankToBankThreeScreen = '/bank_to_bank_three_screen';

  static const String moneySentSuccessScreen = '/money_sent_success_screen';

  static const String mobilePrepaidOneScreen = '/mobile_prepaid_one_screen';

  static const String mobilePrepaidTwoScreen = '/mobile_prepaid_two_screen';

  static const String mobilePrepaidThreeScreen = '/mobile_prepaid_three_screen';

  static const String rechargeSuccessScreen = '/recharge_success_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: onboardingScreen,
      page: () => OnboardingScreen(),
      bindings: [
        OnboardingBinding(),
      ],
    ),
    GetPage(
      name: logInScreen,
      page: () => LogInScreen(),
      bindings: [
        LogInBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: cardDetailsScreen,
      page: () => CardDetailsScreen(),
      bindings: [
        CardDetailsBinding(),
      ],
    ),
    GetPage(
      name: editProfileScreen,
      page: () => EditProfileScreen(),
      bindings: [
        EditProfileBinding(),
      ],
    ),
    GetPage(
      name: historyScreen,
      page: () => HistoryScreen(),
      bindings: [
        HistoryBinding(),
      ],
    ),
    GetPage(
      name: notificationsScreen,
      page: () => NotificationsScreen(),
      bindings: [
        NotificationsBinding(),
      ],
    ),
    GetPage(
      name: sendMoneyScreen,
      page: () => SendMoneyScreen(),
      bindings: [
        SendMoneyBinding(),
      ],
    ),
    GetPage(
      name: enterMoneyScreen,
      page: () => EnterMoneyScreen(),
      bindings: [
        EnterMoneyBinding(),
      ],
    ),
    GetPage(
      name: sendMoneyEnterPasswordScreen,
      page: () => SendMoneyEnterPasswordScreen(),
      bindings: [
        SendMoneyEnterPasswordBinding(),
      ],
    ),
    GetPage(
      name: addPersonScreen,
      page: () => AddPersonScreen(),
      bindings: [
        AddPersonBinding(),
      ],
    ),
    GetPage(
      name: addCardOneScreen,
      page: () => AddCardOneScreen(),
      bindings: [
        AddCardOneBinding(),
      ],
    ),
    GetPage(
      name: paymentSuccessScreen,
      page: () => PaymentSuccessScreen(),
      bindings: [
        PaymentSuccessBinding(),
      ],
    ),
    GetPage(
      name: receiveMoneyRequestTabContainerScreen,
      page: () => ReceiveMoneyRequestTabContainerScreen(),
      bindings: [
        ReceiveMoneyRequestTabContainerBinding(),
      ],
    ),
    GetPage(
      name: requestSentScreen,
      page: () => RequestSentScreen(),
      bindings: [
        RequestSentBinding(),
      ],
    ),
    GetPage(
      name: moneyExchangeScreen,
      page: () => MoneyExchangeScreen(),
      bindings: [
        MoneyExchangeBinding(),
      ],
    ),
    GetPage(
      name: payBillScreen,
      page: () => PayBillScreen(),
      bindings: [
        PayBillBinding(),
      ],
    ),
    GetPage(
      name: electricBillScreen,
      page: () => ElectricBillScreen(),
      bindings: [
        ElectricBillBinding(),
      ],
    ),
    GetPage(
      name: bilPaymentSuccessScreen,
      page: () => BilPaymentSuccessScreen(),
      bindings: [
        BilPaymentSuccessBinding(),
      ],
    ),
    GetPage(
      name: bankToBankOneScreen,
      page: () => BankToBankOneScreen(),
      bindings: [
        BankToBankOneBinding(),
      ],
    ),
    GetPage(
      name: bankToBankTwoScreen,
      page: () => BankToBankTwoScreen(),
      bindings: [
        BankToBankTwoBinding(),
      ],
    ),
    GetPage(
      name: bankToBankThreeScreen,
      page: () => BankToBankThreeScreen(),
      bindings: [
        BankToBankThreeBinding(),
      ],
    ),
    GetPage(
      name: moneySentSuccessScreen,
      page: () => MoneySentSuccessScreen(),
      bindings: [
        MoneySentSuccessBinding(),
      ],
    ),
    GetPage(
      name: mobilePrepaidOneScreen,
      page: () => MobilePrepaidOneScreen(),
      bindings: [
        MobilePrepaidOneBinding(),
      ],
    ),
    GetPage(
      name: mobilePrepaidTwoScreen,
      page: () => MobilePrepaidTwoScreen(),
      bindings: [
        MobilePrepaidTwoBinding(),
      ],
    ),
    GetPage(
      name: mobilePrepaidThreeScreen,
      page: () => MobilePrepaidThreeScreen(),
      bindings: [
        MobilePrepaidThreeBinding(),
      ],
    ),
    GetPage(
      name: rechargeSuccessScreen,
      page: () => RechargeSuccessScreen(),
      bindings: [
        RechargeSuccessBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
