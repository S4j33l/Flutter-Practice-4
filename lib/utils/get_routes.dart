import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:internship_application_4/routes/login_page.dart';
import 'package:internship_application_4/routes/profile_page.dart';

class AllRoutes {
  static String profileRoute = "/profilePage";
  static String getSplashScreenRoute() => profileRoute;
  static String loginRoute = "/profilePage";
  static String getLoginRoute() => loginRoute;
  static List<GetPage> routes = [
    GetPage(name: profileRoute, page: () => const ProfilePage()),
    GetPage(name: loginRoute, page: () => const LoginPage())
  ];
}
