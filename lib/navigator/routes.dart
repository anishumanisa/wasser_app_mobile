import 'package:flutter/material.dart';
import 'package:wasser_app/navigator/route_list.dart';
import 'package:wasser_app/ui/pages/login/login_page.dart';
import 'package:wasser_app/ui/pages/main/main_page.dart';
import 'package:wasser_app/ui/pages/register/register_page.dart';
import 'package:provider/provider.dart';

class Routes {
  static final Map<String, WidgetBuilder> _routes = {
    RouteList.main: (BuildContext context) => const MainPage(),
    RouteList.login: (BuildContext context) => const LoginPage(),
    RouteList.register: (BuildContext context) => const RegisterPage(),
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
        if (!(null is T2)) {
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
