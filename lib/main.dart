import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:wasser_app/ui/pages/register/register_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// init
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      builder: () => LayoutBuilder(
        builder: (context, constraints) {
          return MaterialApp(
            key: ValueKey('main'),
            title: "Wasser",
            builder: (context, child) {
              // set context for Screen util
              ScreenUtil.setContext(context);
              return const RegisterPage();
            },
          );
        },
      ),
    );
  }
}
