import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  var isPasswordHidden = true.obs;
  var isRememberMe = false.obs;

  // Function buat login
  void login() {
    String username = usernameController.text;
    String password = passwordController.text;

    if (username.isNotEmpty && password.isNotEmpty) {
      // Kalau login berhasil, alert muncul di atas
      Get.snackbar(
        'Login Success',
        'Welcome, $username!',
        snackPosition: SnackPosition.TOP, // Muncul di bagian atas
      );
      Get.offNamed('/home');
    } else {
      // Kalau login gagal, alert juga muncul di atas
      Get.snackbar(
        'Login Failed',
        'Please fill out all fields.',
        snackPosition: SnackPosition.TOP, // Muncul di bagian atas
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  void toggleRememberMe(bool value) {
    isRememberMe.value = value;
  }

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
