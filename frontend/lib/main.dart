import 'package:flutter/material.dart';
import 'package:frontend/apps/utils/theme.dart';
import 'package:get/get.dart';

import 'apps/bindings/main_bindings.dart';
import 'apps/routes/app_route.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChatApp',
      initialBinding: MainBindings(),
      initialRoute: '/login',
      getPages: AppRoutes.routes,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}
