import 'package:flutter/material.dart';
import 'login_screen.dart';

class ProfileScreen extends StatelessWidget {
  void logout(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_) => LoginScreen()),
          (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            CircleAvatar(radius: 40),
            SizedBox(height: 20),

            Text("John Doe", style: TextStyle(fontSize: 20)),
            Text("john@example.com"),

            SizedBox(height: 30),

            ElevatedButton(
              onPressed: () => logout(context),
              child: Text("Logout"),
            )
          ],
        ),
      ),
    );
  }
}