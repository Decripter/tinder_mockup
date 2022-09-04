import 'package:flutter/material.dart';

import '../components/button_widget.dart';

class PortraitMode extends StatefulWidget {
  const PortraitMode({Key? key}) : super(key: key);

  @override
  State<PortraitMode> createState() => _PortraitModeState();
}

class _PortraitModeState extends State<PortraitMode> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;

    double paddingSevenPercentWidth = size.width * 0.07;
    double fontSizeByWidth = size.width * 0.03;

    if (fontSizeByWidth > 28) {
      fontSizeByWidth = 28;
    }

    return Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
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
          ],
        ),
        Spacer(
          flex: height < 562 ? 1 : 2,
        ),
        Expanded(
          flex: height < 562 ? 3 : 4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: size.width * 0.45,
                child: Image.asset(
                  'assets/logo_tinder.png',
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.fitWidth,
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(
                    left: paddingSevenPercentWidth,
                    right: paddingSevenPercentWidth,
                    bottom: size.height * 0.05),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'By tapping Create Account or Sign In, you agree to our Terms. Learn how we process your data in our Privacy Policy and Cookies Policy.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontSize: fontSizeByWidth),
                    ),
                    SizedBox(
                      height: paddingSevenPercentWidth,
                    ),
                    const ButtonWidget(
                        icon: 'assets/logo_apple.png',
                        text: 'SIGN IN WITH APPLE'),
                    const Padding(
                      padding: EdgeInsets.all(2.0),
                      child: ButtonWidget(
                          icon: 'assets/logo_facebook.png',
                          text: 'SIGN IN WITH FACEBOOK'),
                    ),
                    const ButtonWidget(
                        icon: 'assets/bubble.png',
                        text: 'SIGN IN WITH PHONE NUMBER'),
                    Padding(
                      padding:
                          EdgeInsets.only(top: paddingSevenPercentWidth * 0.5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Trouble Signing In?',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
