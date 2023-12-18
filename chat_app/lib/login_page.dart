import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _formkey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void loginUser() {
    if (_formkey.currentState!.validate()) {
      print(usernameController.text);
      print(passwordController.text);
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
                key: _formkey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value != null
                            && value.isNotEmpty
                            && value.length < 5) {
                          return 'Your username should be more than 5 characters';
                        } else if (value != null && value.isEmpty) {
                          return 'Please type your username';
                        } else {
                          return null;
                        }
                      },
                      controller: usernameController,
                      decoration: const InputDecoration(
                          hintText: 'Username', border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: 'Password', border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    loginUser();
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
