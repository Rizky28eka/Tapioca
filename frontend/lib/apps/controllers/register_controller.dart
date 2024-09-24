import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  var isPasswordHidden = true.obs;

  String? _validateEmail(String email) {
    if (email.isEmpty) {
      return 'Email cannot be empty';
    } else if (!EmailValidator.validate(email)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  String? _validatePassword(String password) {
    if (password.isEmpty) {
      return 'Password cannot be empty';
    } else if (password.length < 8) {
      return 'Password must be at least 8 characters long';
    }
    return null;
  }

  bool _validateForm(
      String username, String email, String password, String confirmPassword) {
    if (username.isEmpty) {
      _showErrorMessage('Username cannot be empty');
      return false;
    }

    String? emailError = _validateEmail(email);
    if (emailError != null) {
      _showErrorMessage(emailError);
      return false;
    }

    String? passwordError = _validatePassword(password);
    if (passwordError != null) {
      _showErrorMessage(passwordError);
      return false;
    }

    if (password != confirmPassword) {
      _showErrorMessage('Passwords do not match');
      return false;
    }

    return true;
  }

  void createAccount() {
    String username = usernameController.text.trim();
    String email = emailController.text.trim();
    String password = passwordController.text;
    String confirmPassword = confirmPasswordController.text;

    if (_validateForm(username, email, password, confirmPassword)) {
      Get.snackbar(
        'Account Created',
        'Your account has been successfully created!',
        snackPosition: SnackPosition.BOTTOM,
      );

      Get.offNamed('/login');
    }
  }

  void _showErrorMessage(String message) {
    Get.snackbar(
      'Error',
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red,
      colorText: Colors.white,
    );
  }

  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  @override
  void onClose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }
}
