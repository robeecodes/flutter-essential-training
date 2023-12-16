import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: const Drawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Click!');
          },
        ),
        body: Column(
          children: [
            Text(
              'Let\'s sign you in!',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Colors.black54,
                    letterSpacing: .5,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            Text(
              'Welcome back!\nYou\'ve been missed!',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Colors.black38,
                    letterSpacing: .5,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
            Image.network(
                'https://3009709.youcanlearnit.net/Alien_LIL_131338.png',
                height: 200),
            Container(
              height: 150,
              width: 150,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(50),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24), color: Colors.blue),
              child: const FlutterLogo(),
            )
          ],
        ));
  }
}
