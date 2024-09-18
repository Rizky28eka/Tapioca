import 'package:frontend/routes/app_route.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _navigateToLogin();
  }

  void _navigateToLogin() async {
    await Future.delayed(Duration(seconds: 3));
    Get.offNamed(AppRoutes.login);
  }
}
