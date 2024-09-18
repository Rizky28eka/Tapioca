import 'package:flutter/material.dart';
import 'package:frontend/controllers/splash_controller.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          'Welcome to ChatApp',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
