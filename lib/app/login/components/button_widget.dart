import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String icon;
  final String text;
  const ButtonWidget({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 1.2),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 12, left: 12),
              child: Image.asset(
                icon,
                width: 16,
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: const TextStyle(color: Colors.white, fontSize: 13),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
