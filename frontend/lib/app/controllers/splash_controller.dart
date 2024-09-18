import 'package:get/get.dart';

import '../routes/app_route.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _navigateToLogin();
  }

  void _navigateToLogin() async {
    await Future.delayed(Duration(seconds: 3)); // Tunggu 3 detik
    Get.offNamed(AppRoutes.login); // Pindah ke halaman login
  }
}
