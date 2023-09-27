import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:internship_application_4/routes/auth_page.dart';

import 'package:internship_application_4/theme/application_theme.dart';
import 'package:internship_application_4/utils/get_routes.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(70, 208, 217, 1),
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: appTheme,
    initialRoute: AllRoutes.getLoginRoute(),
    getPages: AllRoutes.routes,
  ));
}

class InternshipProject4 extends StatelessWidget {
  const InternshipProject4({super.key});

  @override
  Widget build(BuildContext context) {
    return const AuthPage();
  }
}
