import 'package:chat_app/models/chat_message_entity.dart';
import 'package:flutter/material.dart';

class ChatInput extends StatelessWidget {
  final chatMessageController = TextEditingController();
  final Function(ChatMessageEntity) onSubmit;

  ChatInput({super.key, required this.onSubmit});

  void onSendPressed() {
    final newChatMessage = ChatMessageEntity(text: chatMessageController.text, id: '244', author: Author(username: 'robee'), createdAt: DateTime.now());
    onSubmit(newChatMessage);
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
