import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  // TextEditingControllers untuk input field
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  // Rx variabel untuk mengatur visibilitas password
  var isPasswordHidden = true.obs;

  // Validator untuk email dan password
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

  // Function to validate form inputs
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

  // Function to create account
  void createAccount() {
    String username = usernameController.text.trim();
    String email = emailController.text.trim();
    String password = passwordController.text;
    String confirmPassword = confirmPasswordController.text;

    if (_validateForm(username, email, password, confirmPassword)) {
      // Logika registrasi, misalnya panggil API atau simpan ke database
      Get.snackbar(
        'Account Created',
        'Your account has been successfully created!',
        snackPosition: SnackPosition.BOTTOM,
      );
      // Navigasi ke halaman login atau home setelah sukses registrasi
      Get.offNamed('/login');
    }
  }

  // Function to show error message in SnackBar
  void _showErrorMessage(String message) {
    Get.snackbar(
      'Error',
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red,
      colorText: Colors.white,
    );
  }

  // Function to toggle password visibility
  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  // Dispose controllers when the controller is closed
  @override
  void onClose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }
}
