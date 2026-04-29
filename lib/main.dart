import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(GitPracticeApp());
}

class GitPracticeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Git Practice App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}