import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/buttons.dart';
import 'package:grocery_app/widgets/login_page_form.dart';
import 'package:grocery_app/widgets/name_style.dart';
import 'package:grocery_app/utils/validators.dart';
import 'package:grocery_app/widgets/social_buttons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 255, 244),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Image.asset("assets/images/1.png", width: 300),
              const Text(
                "Welcome to our",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const NameStyle(fontSize: 30),
              const SizedBox(height: 20),

              // 📱 Phone field
              LoginPageForm(
                controller: phoneController,
                labelText: 'Phone Number',
                hintText: 'Enter Your Phone Number',
                validator: Validators.validatePhone,
              ),

              // 🔒 Password field
              LoginPageForm(
                controller: passwordController,
                labelText: 'Password',
                hintText: 'Enter Your Password',
                validator: Validators.validatePassword,
              ),

              TextButton(
                onPressed: () {},
                child: Text(
                  "Forget Password?",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Buttons(
                nameButton: "Login",
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print("✅ Form is valid");
                    print("Phone: ${phoneController.text}");
                    print("Password: ${passwordController.text}");
                  } else {
                    print("❌ Form is not valid");
                  }
                },
                backgroundcolor: Colors.green,
                textcolor: Colors.white,
              ),
              SizedBox(height: 20),

              Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SocialButton(
          image:"assets/images/g++.png" ,
          text: 'Google',
          borderColor: Colors.red,
          textColor: Colors.red,
          iconColor: Colors.red,
          onTap: () {
            //print('Google pressed');
          },
        ),
        SocialButton(
          image: "assets/images/apple_icon.png",
          text: 'Apple',
          borderColor: Colors.black,
          textColor: Colors.black,
          iconColor: Colors.black,
          onTap: () {
            //print('Apple pressed');
          },
        ),
      ],
    ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't Have Account?"),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
