import 'package:chat_app/widgets/chat_bubble.dart';
import 'package:chat_app/widgets/chat_input.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {

    final username = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Hi $username!'),
        centerTitle: true,
        titleTextStyle: GoogleFonts.poppins (
          textStyle: const TextStyle (
            color: Colors.black87,
            fontSize: 18,
            fontWeight: FontWeight.bold
          )
        ),
        actions: [IconButton(onPressed: () {
          Navigator.popAndPushNamed(context, '/');
        }, icon: const Icon(Icons.logout))],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ChatBubble(
                    alignment: index % 2 == 0
                        ? Alignment.centerLeft
                        : Alignment.centerRight,
                    message: 'Hi Robin!',
                  );
                }),
          ),
          ChatInput()
        ],
      ),
    );
  }
}
