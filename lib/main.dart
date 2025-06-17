import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? _role;

  void _handleLogin(String role) {
    setState(() {
      _role = role;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agent App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0A2239)),
        useMaterial3: true,
      ),
      home: _role == null
          ? LoginScreen(onLogin: _handleLogin)
          : HomeScreen(role: _role!),
    );
  }
}
