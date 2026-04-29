import 'package:flutter/material.dart';
import 'home_screen.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Git Practice App", style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),

            CustomTextField(hint: "Email", controller: emailController),
            SizedBox(height: 10),

            CustomTextField(hint: "Password", controller: passwordController),
            SizedBox(height: 20),

            CustomButton(text: "Login", onPressed: () => login(context)),
          ],
        ),
      ),
    );
  }
}