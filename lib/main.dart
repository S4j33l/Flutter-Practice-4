import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:internship_application_4/routes/home_page.dart';
import 'package:internship_application_4/theme/application_theme.dart';
import 'package:internship_application_4/utils/get_routes.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(70, 208, 217, 1),
    ),
  );
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: appTheme,
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
