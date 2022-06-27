import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wasser_app/core/network/api_provider.dart';
import 'package:wasser_app/core/router/route_list.dart';
import 'package:wasser_app/core/router/routes.dart';
import 'package:wasser_app/core/utils/share_pref.dart';
import 'package:wasser_app/core/utils/text_utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// init
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await SharePref.init();
  await ApiProvider.init();

  runApp(Builder(builder: (context) {
    String? token = SharePref.getToken();

    return WasserApp(
      token: token,
    );
  }));
}

class WasserApp extends StatelessWidget {
  const WasserApp({Key? key, required this.token}) : super(key: key);

  final String? token;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      builder: () => LayoutBuilder(
        builder: (context, constraints) {
          var isNotLogged = token?.isNullEmpty;
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            key: const ValueKey('main'),
            title: "Wasser",
            initialRoute:
                (isNotLogged ?? false) ? RouteList.login : RouteList.main,
            routes: Routes().allRoutes,
            onGenerateRoute: Routes.getRouteGenerate,
            builder: (context, child) {
              // set context for Screen util
              ScreenUtil.setContext(context);
              return child ?? const SizedBox.shrink();
            },
          );
        },
      ),
    );
  }
}
