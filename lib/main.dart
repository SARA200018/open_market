import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:open_market_project/app/app_router/app_router.dart';

import 'Helper/theme.dart';
import 'app/app_binding/app_binding.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        minTextAdapt: true,
        builder: (context, child) => GetMaterialApp(
          //locale: const Locale(AppString.lang),
          debugShowCheckedModeBanner: false,
          initialBinding: Binding(),
          getPages: appRoutes,
          theme: ThemeManager.lightTheme,
        ));
  }
}

