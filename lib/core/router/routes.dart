import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wasser_app/core/router/route_list.dart';
import 'package:wasser_app/ui/pages/cash_flow/cashflow_page.dart';
import 'package:wasser_app/ui/pages/complain/complain_page.dart';
import 'package:wasser_app/ui/pages/complain_form/complain_form_page.dart';
import 'package:wasser_app/ui/pages/complain_list/complain_list_page.dart';
import 'package:wasser_app/ui/pages/example/example_page.dart';
import 'package:wasser_app/ui/pages/home/home_page.dart';
import 'package:wasser_app/ui/pages/login/login_page.dart';
import 'package:wasser_app/ui/pages/main/main_page.dart';
import 'package:wasser_app/ui/pages/payment_confirm/payment_confirm_page.dart';
import 'package:wasser_app/ui/pages/payment_list/payment_list_page.dart';
import 'package:wasser_app/ui/pages/peyment_receipt/payment_receipt_page.dart';
import 'package:wasser_app/ui/pages/register/register_page.dart';

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
        return _buildRoute(
          settings: settings,
          builder: const PaymentConfirmPage(),
          fullScreenDialog: false,
        );

      case RouteList.cashFlow:
        return _buildRoute(
          settings: settings,
          builder: const CashFlowPage(),
          fullScreenDialog: false,
        );

      case RouteList.paymentList:
        return _buildRoute(
          settings: settings,
          builder: const PaymentListPage(),
          fullScreenDialog: false,
        );

      case RouteList.paymentReceipt:
        return _buildRoute(
          settings: settings,
          builder: const PaymentReceiptPage(),
          fullScreenDialog: false,
        );

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

  // static Route _errorRoute() {
  //   return MaterialPageRoute(builder: (_) {
  //     return Scaffold(
  //       appBar: AppBar(
  //         title: const Text('Error'),
  //       ),
  //       body: const Center(
  //         child: Text('Page not found'),
  //       ),
  //     );
  //   });
  // }

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
