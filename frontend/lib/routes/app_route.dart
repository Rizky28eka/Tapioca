import 'package:get/get.dart';

import '../pages/login_page.dart';

class AppRoutes {
  static const home = '/home';
  static const login = '/login';
  static const chat = '/chat';
  static const settings = '/settings';

  static List<GetPage> routes = [
    GetPage(name: home, page: () => HomePage()),
  ];
}
