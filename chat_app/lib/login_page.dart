import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void loginUser() {
    print('Logged in!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Let\'s sign you in!',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: Colors.black87,
                  letterSpacing: .5,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Text(
              'Welcome back!\nYou\'ve been missed!',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Colors.black54,
                    letterSpacing: .5,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
            Image.network(
                'https://3009709.youcanlearnit.net/Alien_LIL_131338.png',
                height: 200),
            ElevatedButton(
                onPressed: () {
                  loginUser();
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: Text(
                  'Login',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white70,
                          letterSpacing: .5,
                          fontWeight: FontWeight.bold,
                          fontSize: 22)),
                ))
          ],
        ),
      ),
    ));
  }
}
