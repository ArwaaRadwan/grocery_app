import 'package:flutter/material.dart';
import 'package:grocery_app/onboarding_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

    @override
  void initState() {
    super.initState();

    // بعد 3 ثواني هينتقل لصفحة الـ Onboarding
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingPage()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 89, 177, 102),
      body: Padding(
        padding: const EdgeInsets.all(100),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: 300,
                height: 300,
              ),
              Text(
                "GrocerEase",
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 72,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Lilita One",
                ),
              ),
              Text("Your Daily Grocery Companion" , style: TextStyle(fontWeight: FontWeight.bold),)
              
            ],
          ),
        ),
      ),
    );
  }
}
