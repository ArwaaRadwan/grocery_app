import 'package:flutter/material.dart';
import 'package:grocery_app/Data/onboarding_data.dart';
import 'package:grocery_app/login_page.dart';
import 'package:grocery_app/widgets/circular_next_button.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentPage = 0;
  late PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              itemCount: onboardingData.length,
              controller: controller,
              itemBuilder: (context, index) {
                final item = onboardingData[index];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Image.asset(item.image, width: 350, height: 350),
                    const SizedBox(height: 20),
                    Text(
                      item.title,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),

                    Text(
                      item.description,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 16, color: Colors.grey),
                    ),

                    SizedBox(height: 20),

                    CircularNextButton(
                      progress: (currentPage + 1) / onboardingData.length,
                      onPressed: () {
                        if (currentPage < onboardingData.length - 1) {
                          controller.nextPage(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeInOut,
                          );
                        } else {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        }
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
