import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Let\'s sign you in!',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  color: Colors.black54,
                  letterSpacing: .5,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,),
            ),
          ),
          Text(
            'Welcome back!\nYou\'ve been missed!',
            textAlign: TextAlign.center,
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
        ],
      ),
    ));
  }
}
