import 'package:get/get.dart';

import '../routes/app_route.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _navigateToLogin();
  }

  void _navigateToLogin() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offNamed(AppRoutes.login);
  }
}
