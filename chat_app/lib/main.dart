import 'package:flutter/material.dart';

import 'login_page.dart';

void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Chat App',
        theme: ThemeData(colorSchemeSeed: Colors.orange),
        home: const LoginPage());
  }
}
