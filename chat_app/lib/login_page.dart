import 'package:chat_app/chat_page.dart';
import 'package:chat_app/utils/spaces.dart';
import 'package:chat_app/widgets/login_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  LoginPage({super.key});

  void loginUser(context) {
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacementNamed(context, '/chat',
          arguments: usernameController.text);
    } else {
      print('Failed :(');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
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
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    LoginTextField(
                      controller: usernameController,
                      hintText: 'Username',
                      validator: (value) {
                        if (value != null &&
                            value.isNotEmpty &&
                            value.length < 5) {
                          return 'Your username should be more than 5 characters';
                        } else if (value != null && value.isEmpty) {
                          return 'Please type your username';
                        } else {
                          return null;
                        }
                      },
                    ),
                    verticalSpacing(24),
                    LoginTextField(
                      controller: passwordController,
                      hintText: 'Password',
                      obscureText: true,
                    ),
                    verticalSpacing(12),
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    loginUser(context);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange),
                  child: Text(
                    'Login',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Colors.white70,
                            letterSpacing: .5,
                            fontWeight: FontWeight.bold,
                            fontSize: 22)),
                  )),
              GestureDetector(
                onTap: () {
                  // TODO: Navigate to browser
                  print('Click!');
                },
                child: const Column(
                  children: [
                    Text('Find me at'),
                    Text('https://github.com/robeecodes'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
