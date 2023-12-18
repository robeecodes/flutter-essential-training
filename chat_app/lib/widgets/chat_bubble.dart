import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatBubble extends StatelessWidget {
  final Alignment alignment;
  final String message;

  const ChatBubble({super.key, required this.alignment, required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        margin: const EdgeInsets.all(50),
        padding: const EdgeInsets.all(24),
        decoration: const BoxDecoration(
            color: Colors.deepOrange,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular((12)),
                topRight: Radius.circular(12),
                bottomLeft: Radius.circular(12))),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              message,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: Colors.white70,
                  letterSpacing: .5,
                  fontSize: 14,
                ),
              ),
            ),
            Image.network(
                'https://3009709.youcanlearnit.net/Alien_LIL_131338.png',
                height: 200)
          ],
        ),
      ),
    );
  }
}
