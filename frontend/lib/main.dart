import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bindings/main_bindings.dart';
import 'routes/app_route.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ChatApp',
      initialBinding: MainBindings(),
      initialRoute: '/',
      getPages: AppRoutes.routes,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
    );
  }
}
