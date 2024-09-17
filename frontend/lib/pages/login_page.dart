import 'package:flutter/material.dart';
import 'package:frontend/controllers/auth_controller.dart';
import 'package:get/get.dart';
// import '../controllers/auth_controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AuthController authController = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Obx(() {
          return authController.isLoggedIn.value
              ? Text('Logged In')
              : Text('Logged Out');
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          authController.isLoggedIn.value
              ? authController.logout()
              : authController.login();
        },
        child: Icon(Icons.login),
      ),
    );
  }
}
