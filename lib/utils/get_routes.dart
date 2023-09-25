import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:internship_application_4/routes/home_page.dart';
import 'package:internship_application_4/routes/profile_page.dart';

class AllRoutes {
  static String splashRoute = "/splashy";
  static String getSplashScreenRoute() => splashRoute;
  static String homeRoute = "/homePage";
  static String getHomeRoute() => homeRoute;
  static List<GetPage> routes = [
    GetPage(name: splashRoute, page: () => const ProfilePage()),
    GetPage(name: homeRoute, page: () => const HomePage())
  ];
}
