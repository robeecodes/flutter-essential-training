import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:chat_app/models/chat_message_entity.dart';
import 'package:chat_app/models/image_model.dart';
import 'package:chat_app/utils/brand_colour.dart';
import 'package:chat_app/widgets/chat_bubble.dart';
import 'package:chat_app/widgets/chat_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatMessageEntity> _messages = [];
  final ScrollController _scrollController = ScrollController();

  _initMessages() async {
    rootBundle.loadString('lib/assets/mock_messages.json').then((response) {
      final List<dynamic> decodedList = jsonDecode(response) as List;

      final List<ChatMessageEntity> _chatMessages =
          decodedList.map((item) => ChatMessageEntity.fromJson(item)).toList();

      setState(() {
        _messages = _chatMessages;
      });
    });
  }

  onMessageSent(ChatMessageEntity entity) {
    _messages.add(entity);

    setState(() {});

    WidgetsBinding.instance
        .addPostFrameCallback((_) => _scrollController.animateTo(
              _scrollController.position.maxScrollExtent,
              duration: const Duration(milliseconds: 400),
              curve: Curves.ease,
            ));
  }

  Future<List<UnsplashImage>> _getNetworkImages() async {
    var endpointUrl = Uri.parse(
        'https://api.unsplash.com/photos/?client_id=${UnsplashImage.apiAccess}');

    final response = await http.get(endpointUrl);

    if (response.statusCode == 200) {
      final List<dynamic> decodedList = jsonDecode(response.body) as List;

      final List<UnsplashImage> _imageList =
          decodedList.map((item) => UnsplashImage.fromJson(item)).toList();

      return _imageList;
    } else {
      throw Exception('The images don\'t work!!!!! >O< >o<');
    }
  }

  @override
  void initState() {
    _initMessages();
    _getNetworkImages();
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
          FutureBuilder<List<UnsplashImage>>(
              future: _getNetworkImages(),
              builder: (context, AsyncSnapshot<List<UnsplashImage>> snapshot) {
                if (snapshot.hasData) {
                  return Column(children: [
                    Image.network(snapshot.data![0].urls['regular']),
                    Text(snapshot.data![0].user.name),
                    Text(snapshot.data![0].user.url)
                  ]);
                }

                return const CircularProgressIndicator();
              }),
          Expanded(
            child: ListView.builder(
                controller: _scrollController,
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  return ChatBubble(
                      alignment: _messages[index].author.username == username
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      entity: _messages[index]);
                }),
          ),
          ChatInput(onSubmit: onMessageSent)
        ],
      ),
    );
  }
}
