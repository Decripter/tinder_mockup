import 'package:flutter/material.dart';

import 'package:tinder_mockup/app/login/screens/landscape.dart';
import 'package:tinder_mockup/app/login/screens/portrait.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;

    var isLandscape = width > height + 25;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.centerRight,
                stops: [
                  0.3,
                  0.9,
                  0.9,
                ],
                colors: [
                  Color.fromARGB(255, 215, 44, 92),
                  Color.fromARGB(255, 250, 114, 96),
                  Color.fromARGB(255, 250, 114, 96),
                ],
              ),
            ),
          ),
          isLandscape ? const LandscapeMode() : const PortraitMode()
        ],
      ),
    );
  }
}
