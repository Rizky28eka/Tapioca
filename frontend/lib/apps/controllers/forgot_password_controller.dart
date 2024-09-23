import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  final TextEditingController emailController = TextEditingController();

  // Function buat ngirim link reset password
  void sendResetLink() {
    String email = emailController.text;

    if (email.isNotEmpty) {
      // Tambahkan logika untuk ngirim email reset password
      Get.snackbar(
        'Reset Link Sent',
        'Check your email ($email) for the reset link.',
        snackPosition: SnackPosition.TOP,
      );
    } else {
      Get.snackbar(
        'Error',
        'Please enter your email address.',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    super.onClose();
  }
}
