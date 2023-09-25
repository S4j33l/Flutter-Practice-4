import 'package:flutter/material.dart';
import 'package:internship_application_4/theme/application_theme.dart';
import 'package:internship_application_4/widgets/my_text_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(70, 208, 217, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/images/home_search.png"),
            RichText(
              text: const TextSpan(
                style: TextStyle(fontSize: 36.0, fontFamily: "Rubik"),
                children: <TextSpan>[
                  TextSpan(
                    text: "Find",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(20, 54, 86, 1),
                    ),
                  ),
                  TextSpan(
                    text: "Home",
                  ),
                ],
              ),
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Welcome",
                        style: appTheme.textTheme.titleLarge,
                      ),
                      Text(
                        "Login to enjoy finding your dream home",
                        style: appTheme.textTheme.displayMedium,
                      ),
                      UsersTextField(
                          controller: emailController, label: "Email"),
                      UsersTextField(
                          controller: passwordController, label: "Password", obscured: true),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
