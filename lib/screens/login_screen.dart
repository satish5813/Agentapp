import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key, required this.onLogin});

  final void Function(String role) onLogin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Agent App Login')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () => onLogin('agent'),
              child: const Text('Login as Agent'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => onLogin('manager'),
              child: const Text('Login as Manager'),
            ),
          ],
        ),
      ),
    );
  }
}
