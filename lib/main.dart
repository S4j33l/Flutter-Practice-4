import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship_application_4/routes/home_page.dart';
import 'package:internship_application_4/utils/get_routes.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: AllRoutes.getHomeRoute(),
    getPages: AllRoutes.routes,
  ));
}

class InternshipProject4 extends StatelessWidget {
  const InternshipProject4({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}
