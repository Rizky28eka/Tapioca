import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  // Reactive variable to manage the theme mode
  var isDarkMode = false.obs;

  @override
  void onInit() {
    super.onInit();
    // Load the theme mode setting from system preferences
    isDarkMode.value = Get.isDarkMode;
  }

  // Method to toggle between dark and light mode
  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
    Get.changeThemeMode(isDarkMode.value ? ThemeMode.dark : ThemeMode.light);
  }
}
