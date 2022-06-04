import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wasser_app/navigator/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// init
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      builder: () => LayoutBuilder(
        builder: (context, constraints) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            key: const ValueKey('main'),
            title: "Wasser",
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
