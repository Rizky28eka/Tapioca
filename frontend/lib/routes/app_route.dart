import 'package:frontend/pages/authentication/splash_page.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const splash = '/';
  static const home = '/home';
  static const login = '/login';
  static const chat = '/chat';
  static const settings = '/settings';

  static List<GetPage> routes = [
    GetPage(name: '/', page: () => SplashPage()),
  ];
}
