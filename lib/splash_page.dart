import 'package:flutter/material.dart';
import 'package:grocery_app/onboarding_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
   bool showLoader = false;
  @override
  void initState() {
    super.initState();
        Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        showLoader = true;
      });
    });

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
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("assets/images/splash.jpg", fit: BoxFit.cover),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Text(
                        'GrocerEase',
                        style: TextStyle(
                          fontSize: 70,
                          color: const Color.fromARGB(255, 26, 112, 49),
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Text(
                        "GrocerEase",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 75,
                          //fontWeight: FontWeight.bold,
                          fontFamily: "Lilita One",
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Your Daily Grocery Companion",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),

            if (showLoader)
                const CircularProgressIndicator(
                  color: Colors.green,
                  strokeWidth: 4,
                ),                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
