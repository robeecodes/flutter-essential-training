import 'package:chat_app/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Hi Robin!"),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.logout))],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: const [
                ChatBubble(alignment: Alignment.centerRight, message: 'Hi, this is Robin!',),
                ChatBubble(alignment: Alignment.centerLeft, message: 'Hi, this is Bill!',),
                ChatBubble(alignment: Alignment.centerLeft, message: 'How are you?',),
              ],
            ),
          ),
          // Chat Input
          Container(
            height: 100,
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white70,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                      color: Colors.white70,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
