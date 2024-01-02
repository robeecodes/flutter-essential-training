import 'dart:convert';

import 'package:chat_app/models/chat_message_entity.dart';
import 'package:chat_app/utils/brand_colour.dart';
import 'package:chat_app/widgets/chat_bubble.dart';
import 'package:chat_app/widgets/chat_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatPage extends StatefulWidget {
  ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatMessageEntity> _messages = [];

  _initMessages() async {
    final response =
        await rootBundle.loadString('lib/assets/mock_messages.json');

    final List<dynamic> decodedList = jsonDecode(response) as List;

    final List<ChatMessageEntity> _chatMessages =
        decodedList.map((item) => ChatMessageEntity.fromJson(item)).toList();

    print("peeeeee ${_chatMessages.length}");

    setState(() {
      _messages = _chatMessages;
    });
  }

  @override
  void initState() {
    _initMessages();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: BrandColour.primaryColour,
        elevation: 0,
        title: Text('Hi $username!'),
        centerTitle: true,
        titleTextStyle: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, '/');
              },
              icon: const Icon(Icons.logout, color: Colors.white))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  return ChatBubble(
                      alignment: _messages[index].author.username == username
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      entity: _messages[index]);
                }),
          ),
          ChatInput()
        ],
      ),
    );
  }
}
