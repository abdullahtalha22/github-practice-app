import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GitHub Practice App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0D1117),
          brightness: Brightness.dark,
          primary: const Color(0xFF238636),
          secondary: const Color(0xFF1F6FEB),
          surface: const Color(0xFF161B22),
          background: const Color(0xFF0D1117),
        ),
        textTheme: GoogleFonts.jetBrainsMonoTextTheme(
          ThemeData.dark().textTheme,
        ),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}