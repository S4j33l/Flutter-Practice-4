import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship_application_4/routes/home_page.dart';

class Splashy extends StatefulWidget {
  const Splashy({super.key});

  @override
  State<Splashy> createState() => _SplashyState();
}

class _SplashyState extends State<Splashy> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(const HomePage(),
          transition: Transition.fade, duration: const Duration(seconds: 1));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image.network(
              "https://images.unsplash.com/photo-1694843690023-3d936b2e83b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")),
    );
  }
}
