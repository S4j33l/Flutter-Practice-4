import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship_application_4/routes/dashboard_page.dart';
import 'package:internship_application_4/routes/profile_page.dart';
import 'package:internship_application_4/theme/application_theme.dart';
import 'package:internship_application_4/widgets/my_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset("assets/images/home_search.png"),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(fontSize: 40.0, fontFamily: "Rubik"),
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
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(20.0),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: <Widget>[
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => const ProfilePage());
                        },
                        child: Text(
                          "Welcome",
                          style: appTheme.textTheme.titleLarge!
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Login for enjoy findhome",
                        style: appTheme.textTheme.displayMedium,
                        softWrap: false,
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Email",
                        style: appTheme.textTheme.displayMedium!.copyWith(
                            fontSize: 14.0,
                            color: const Color.fromRGBO(19, 73, 123, 1),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    UsersTextField(
                        controller: emailController,
                        label: "",
                        suffixed: const Icon(Icons.check_circle)),
                    const SizedBox(height: 20.0),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Password",
                        style: appTheme.textTheme.displayMedium!.copyWith(
                            fontSize: 14.0,
                            color: const Color.fromRGBO(19, 73, 123, 1),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    UsersTextField(
                        controller: passwordController,
                        label: "",
                        obscured: true,
                        suffixed: const Icon(Icons.visibility)),
                    const SizedBox(height: 40.0),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        fixedSize: const Size(360, 50),
                        backgroundColor: const Color.fromRGBO(19, 73, 123, 1),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Get.to(() => const DashboardPage(),
                            transition: Transition.leftToRightWithFade);
                      },
                      child: Text(
                        "LOGIN",
                        style: appTheme.textTheme.displayMedium!.copyWith(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Forgot password?",
                            style: appTheme.textTheme.displayMedium!
                                .copyWith(fontSize: 14.0, color: Colors.black)),
                        Text(
                          "Create new account",
                          style: appTheme.textTheme.displayMedium!.copyWith(
                              fontSize: 14.0,
                              color: const Color.fromRGBO(19, 73, 123, 1),
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
