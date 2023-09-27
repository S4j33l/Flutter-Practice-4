import 'package:flutter_application_5/routes/dashboard_page.dart';
import 'package:flutter_application_5/routes/home_details_page.dart';
import 'package:flutter_application_5/routes/login_page.dart';
import 'package:flutter_application_5/routes/profile_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';


class AllRoutes {
  static String profileRoute = "/profilePage";
  static String getProfileRoute() => profileRoute;
  static String loginRoute = "/loginPage";
  static String getLoginRoute() => loginRoute;
  static String dashboardRoute = "/dashboardPage";
  static String getDashboardRoute() => dashboardRoute;
  static String homeDetailsRoute = "/homeDetailsPage";
  static String getHomeDetailsRoute() => homeDetailsRoute;
  static List<GetPage> routes = [
    GetPage(name: profileRoute, page: () => const ProfilePage()),
    GetPage(name: loginRoute, page: () => const LoginPage()),
    GetPage(name: dashboardRoute, page: () => const DashboardPage()),
    GetPage(name: homeDetailsRoute, page: () => const HomeDetailsPage()),
  ];
}
