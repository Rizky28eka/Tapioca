import 'package:frontend/apps/controllers/forgot_password_controller.dart';
import 'package:frontend/apps/controllers/login_controller.dart';
import 'package:frontend/apps/controllers/register_controller.dart';
import 'package:frontend/apps/controllers/splash_controller.dart';
import 'package:get/get.dart';

class MainBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<RegisterController>(() => RegisterController());
    Get.lazyPut<ForgotPasswordController>(() => ForgotPasswordController());
  }
}
