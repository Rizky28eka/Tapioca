import 'package:frontend/apps/ui/pages/authentication/forgot_password_page.dart';
import 'package:frontend/apps/ui/pages/authentication/login_page.dart';
import 'package:frontend/apps/ui/pages/authentication/register_page.dart';
import 'package:frontend/apps/ui/pages/authentication/splash_page.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const splash = '/';
  static const login = '/login';
  static const register = '/register';
  static const forgotpassword = '/forgotpassword';

  static List<GetPage> routes = [
    GetPage(name: splash, page: () => const SplashPage()),
    GetPage(name: login, page: () => LoginPage()),
    GetPage(name: register, page: () => RegisterPage()),
    GetPage(name: forgotpassword, page: () => const ForgotPasswordPage()),
  ];
}
