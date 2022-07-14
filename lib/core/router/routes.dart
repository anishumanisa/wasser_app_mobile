import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wasser_app/core/router/route_list.dart';
import 'package:wasser_app/ui/pages/cash_flow/cashflow_page.dart';
import 'package:wasser_app/ui/pages/cash_flow_manage/cash_flow_manage_page.dart';
import 'package:wasser_app/ui/pages/complain/complain_page.dart';
import 'package:wasser_app/ui/pages/complain_form/complain_form_page.dart';
import 'package:wasser_app/ui/pages/complain_list/complain_list_page.dart';
import 'package:wasser_app/ui/pages/customer/customer_page.dart';
import 'package:wasser_app/ui/pages/customer/model/customer_list_response.dart'
    as customer;
import 'package:wasser_app/ui/pages/customer_detail/customer_detail_page.dart';
import 'package:wasser_app/ui/pages/example/example_page.dart';
import 'package:wasser_app/ui/pages/home/home_page.dart';
import 'package:wasser_app/ui/pages/input_customer/input_customer_page.dart';
import 'package:wasser_app/ui/pages/input_meter/input_meter_page.dart';
import 'package:wasser_app/ui/pages/login/login_page.dart';
import 'package:wasser_app/ui/pages/login/model/login_response.dart' as login;
import 'package:wasser_app/ui/pages/main/main_page.dart';
import 'package:wasser_app/ui/pages/payment/payment_page.dart';
import 'package:wasser_app/ui/pages/payment_confirm/model/create_transaction_response.dart';
import 'package:wasser_app/ui/pages/payment_confirm/payment_confirm_page.dart';
import 'package:wasser_app/ui/pages/payment_list/payment_list_page.dart';
import 'package:wasser_app/ui/pages/payment_receipt/payment_receipt_page.dart';
import 'package:wasser_app/ui/pages/profile_detail/profile_detail_page.dart';
import 'package:wasser_app/ui/pages/record/record_page.dart';
import 'package:wasser_app/ui/pages/register/register_page.dart';
import 'package:wasser_app/ui/pages/search_customer/model/search_customer_response.dart';
import 'package:wasser_app/ui/pages/search_customer/search_customer_page.dart';
import 'package:wasser_app/ui/pages/transaction/transaction_list_page.dart';
import 'package:wasser_app/ui/pages/user/model/user_list_response.dart'
    as userDetail;
import 'package:wasser_app/ui/pages/user/user_page.dart';
import 'package:wasser_app/ui/pages/user_detail/user_detail_page.dart';
import 'package:wasser_app/ui/pages/user_manage/user_manage_page.dart';

class Routes {
  static final Map<String, WidgetBuilder> _routes = {
    RouteList.main: (BuildContext context) => const MainPage(),
    RouteList.login: (BuildContext context) => const LoginPage(),
    RouteList.register: (BuildContext context) => const RegisterPage(),
    RouteList.complain: (BuildContext context) => const ComplainPage(),
  };

  Map<String, WidgetBuilder> get allRoutes => _routes;

  static Route getRouteGenerate(RouteSettings settings) =>
      _routeGenerate(settings);

  static Route _routeGenerate(RouteSettings settings) {
    switch (settings.name) {
      case RouteList.main:
        return _buildRoute(
          settings: settings,
          builder: const MainPage(),
          fullScreenDialog: false,
        );

      case RouteList.home:
        return _buildRoute(
          settings: settings,
          builder: const HomePage(),
          fullScreenDialog: false,
        );

      case RouteList.login:
        return _buildRoute(
          settings: settings,
          builder: const LoginPage(),
          fullScreenDialog: false,
        );

      case RouteList.register:
        return _buildRoute(
          settings: settings,
          builder: const RegisterPage(),
          fullScreenDialog: false,
        );

      case RouteList.complain:
        return _buildRoute(
          settings: settings,
          builder: const ComplainPage(),
          fullScreenDialog: false,
        );

      case RouteList.complainList:
        return _buildRoute(
          settings: settings,
          builder: const ComplainListPage(),
          fullScreenDialog: false,
        );

      case RouteList.complainForm:
        return _buildRoute(
          settings: settings,
          builder: const ComplainFormPage(),
          fullScreenDialog: false,
        );

      case RouteList.paymentConfirm:
        if (settings.arguments is String) {
          var paymentId = settings.arguments as String;
          return _buildRoute(
              settings: settings,
              builder: PaymentConfirmPage(paymentId: paymentId));
        }
        return _errorRoute();

      case RouteList.cashFlow:
        return _buildRoute(
          settings: settings,
          builder: const CashFlowPage(),
          fullScreenDialog: false,
        );

      case RouteList.cashFlowManage:
        return _buildRoute(
          settings: settings,
          builder: const CashFlowManagePage(),
          fullScreenDialog: false,
        );
      case RouteList.user:
        return _buildRoute(
          settings: settings,
          builder: const UserPages(),
          fullScreenDialog: false,
        );

      case RouteList.userManage:
        return _buildRoute(
          settings: settings,
          builder: const UserManagePage(),
          fullScreenDialog: false,
        );

      case RouteList.transaction:
        return _buildRoute(
          settings: settings,
          builder: const TransactionListPage(),
          fullScreenDialog: false,
        );

      case RouteList.payment:
        return _buildRoute(
          settings: settings,
          builder: const PaymentPage(),
          fullScreenDialog: false,
        );

      case RouteList.searchCustomer:
        return _buildRoute(
          settings: settings,
          builder: const SearchCustomerPage(),
          fullScreenDialog: false,
        );

      case RouteList.customer:
        return _buildRoute(
          settings: settings,
          builder: const CustomerPage(),
          fullScreenDialog: false,
        );

      case RouteList.inputCustomer:
        return _buildRoute(
          settings: settings,
          builder: const InputCustomerPage(),
          fullScreenDialog: false,
        );

      case RouteList.record:
        return _buildRoute(
          settings: settings,
          builder: const RecordPage(),
          fullScreenDialog: false,
        );

      case RouteList.userDetail:
        if (settings.arguments is userDetail.User) {
          userDetail.User user = settings.arguments as userDetail.User;
          return _buildRoute(
              settings: settings, builder: UserDetailPage(user: user));
        }
        return _errorRoute();

      case RouteList.customerDetail:
        if (settings.arguments is customer.User) {
          customer.User user = settings.arguments as customer.User;
          return _buildRoute(
              settings: settings, builder: CustomerDetailPage(user: user));
        }
        return _errorRoute();

      case RouteList.profileDetail:
        if (settings.arguments is login.User) {
          var user = settings.arguments as login.User;
          return _buildRoute(
              settings: settings, builder: ProfileDetailPage(user: user));
        }
        return _errorRoute();

      case RouteList.inputMeter:
        if (settings.arguments is DataCustomer) {
          var dataCustomer = settings.arguments as DataCustomer;
          return _buildRoute(
              settings: settings,
              builder: InputMeterPage(dataCustomer: dataCustomer));
        }
        return _errorRoute();

      case RouteList.paymentList:
        if (settings.arguments is String) {
          var userId = settings.arguments as String;
          return _buildRoute(
              settings: settings, builder: PaymentListPage(userId: userId));
        }
        return _errorRoute();

      case RouteList.paymentReceipt:
        if (settings.arguments is TransactionData) {
          var transactionData = settings.arguments as TransactionData;
          return _buildRoute(
              settings: settings,
              builder: PaymentReceiptPage(transactionData: transactionData));
        }
        return _errorRoute();

      case RouteList.example:
        return _buildRoute(
          settings: settings,
          builder: const ExamplePage(),
          fullScreenDialog: false,
        );

      default:
        return MaterialPageRoute(
          builder: getRouteByName(settings.name!)!,
          maintainState: false,
          fullscreenDialog: true,
        );
    }
  }

  static WidgetBuilder? getRouteByName(String name) {
    if (_routes.containsKey(name) == false) {
      return _routes[RouteList.login];
    }
    return _routes[name];
  }

  static Route _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Page not found'),
        ),
      );
    });
  }

  /// T2 for view model
  /// T for class generic MaterialPageRoute

  static PageRoute _buildRoute<T, T2 extends Listenable?>({
    required RouteSettings settings,
    required Widget builder,
    viewModel,
    bool fullScreenDialog = false,
  }) {
    return MaterialPageRoute<T>(
      settings: settings,
      builder: (context) {
        if (null is! T2) {
          return ListenableProvider<T2>.value(
            value: viewModel,
            builder: (context, child) => builder,
          );
        } else {
          return builder;
        }
      },
      fullscreenDialog: fullScreenDialog,
    );
  }
}
