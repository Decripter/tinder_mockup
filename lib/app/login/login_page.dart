import 'package:flutter/material.dart';
import 'package:tinder_mockup/app/login/components/button_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                stops: [
                  0.3,
                  1,
                ],
                colors: [
                  Color.fromARGB(255, 215, 44, 92),
                  Color.fromARGB(255, 250, 114, 96),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 246,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150,
                    child: Image.asset(
                      'assets/logo_tinder.png',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                  bottom: 10,
                ),
                child: Text(
                  'By tapping Create Account or Sign In, you agree to our Terms. Learn how we process your data in our Privacy Policy and Cookies Policy.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: Column(
                  children: const [
                    ButtonWidget(
                        icon: 'assets/logo_apple.png',
                        text: 'SIGN IN WITH APPLE'),
                    ButtonWidget(
                        icon: 'assets/logo_facebook.png',
                        text: 'SIGN IN WITH FACEBOOK'),
                    ButtonWidget(
                        icon: 'assets/bubble.png',
                        text: 'SIGN IN WITH PHONE NUMBER'),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Trouble Signing In?',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}


//#ED7263
//#E94976