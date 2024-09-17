import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/theme_controller.dart';
import 'utils/theme.dart';

void main() {
  // Initialize ThemeController
  final ThemeController themeController = Get.put(ThemeController());

  runApp(
    Obx(() {
      return GetMaterialApp(
        title: 'ChatApp',
        theme: AppThemes.lightTheme,
        darkTheme: AppThemes.darkTheme,
        themeMode:
            themeController.isDarkMode.value ? ThemeMode.dark : ThemeMode.light,
        home: MyHomePage(),
      );
    }),
  );
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text('ChatApp'),
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: () {
              themeController.toggleTheme();
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Hello World'),
      ),
    );
  }
}
