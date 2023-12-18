import 'package:flutter/material.dart';

class ChatInput extends StatelessWidget {
  ChatInput({super.key});

  final chatMessageController = TextEditingController();

  void onSendPressed() {
    print(chatMessageController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Expanded(
              child: TextField(
                keyboardType: TextInputType.multiline,
            minLines: 1,
            maxLines: 5,
            controller: chatMessageController,
            textCapitalization: TextCapitalization.sentences,
            style: const TextStyle(color: Colors.white70),
            decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Type your message',
                hintStyle: TextStyle(color: Colors.white30)),
          )),
          IconButton(
              onPressed: () => onSendPressed(),
              icon: const Icon(
                Icons.send,
                color: Colors.white70,
              )),
        ],
      ),
    );
  }
}
