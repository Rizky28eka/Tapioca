import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/bindings/main_bindings.dart';
import 'app/routes/app_route.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
