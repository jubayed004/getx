import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import GetX package
import 'package:getx/Screen/home_screen.dart';
import 'package:getx/Screen/routes.dart';
import 'another_screen.dart'; // Import the target screen

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Get.toNamed(home); // Navigate using GetX
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Jubayed Islam",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}