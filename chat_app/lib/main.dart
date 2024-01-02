import 'package:chat_app/utils/brand_colour.dart';
import 'package:flutter/material.dart';
import 'chat_page.dart';
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
      theme: ThemeData(colorSchemeSeed: BrandColour.primaryColour),
      home: LoginPage(),
      routes: {
        '/chat': (context) => ChatPage()
      },
    );
  }
}
