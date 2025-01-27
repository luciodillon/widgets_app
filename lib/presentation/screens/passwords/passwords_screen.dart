import 'package:flutter/material.dart';

class PasswordsScreen extends StatelessWidget {

  static const String name = 'passwords_screen';

  const PasswordsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Passwords Screen'),
      ),
      body: ListView(
        children: [
          Text('Tu clave del lol es: sportingneta12')
        ]
      ),
    );
  }
}