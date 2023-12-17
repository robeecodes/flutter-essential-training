import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(50),
            padding: const EdgeInsets.all(24),
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular((12)),
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12))),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Hi, this is your message',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.white70,
                        letterSpacing: .5,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Image.network(
                    'https://3009709.youcanlearnit.net/Alien_LIL_131338.png',
                    height: 200)
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(50),
            padding: const EdgeInsets.all(24),
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular((12)),
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12))),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Hi, this is your message',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.white70,
                        letterSpacing: .5,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Image.network(
                    'https://3009709.youcanlearnit.net/Alien_LIL_131338.png',
                    height: 200)
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(50),
            padding: const EdgeInsets.all(24),
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular((12)),
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12))),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Hi, this is your message',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.white70,
                        letterSpacing: .5,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Image.network(
                    'https://3009709.youcanlearnit.net/Alien_LIL_131338.png',
                    height: 200)
              ],
            ),
          ),
          Container(
            height: 100,
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white70,
                    )
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                      color: Colors.white70,
                    )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
