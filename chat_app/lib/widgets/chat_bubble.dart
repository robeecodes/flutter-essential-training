import 'package:chat_app/models/chat_message_entity.dart';
import 'package:chat_app/utils/brand_colour.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatBubble extends StatelessWidget {
  final ChatMessageEntity entity;
  final Alignment alignment;

  const ChatBubble({super.key, required this.alignment, required this.entity});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        margin: const EdgeInsets.fromLTRB(36, 24, 36, 24),
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
            color: BrandColour.secondaryColour,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular((12)),
                topRight: Radius.circular(12),
                bottomLeft: Radius.circular(12))),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              entity.text,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: Colors.white,
                  letterSpacing: .5,
                  fontSize: 14,
                ),
              ),
            ),
            if (entity.imageUrl != null)
              Image.network('${entity.imageUrl}', height: 200)
          ],
        ),
      ),
    );
  }
}
