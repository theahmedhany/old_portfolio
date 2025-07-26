import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

// TODO: Always update data.

class AllAnimatedText extends StatelessWidget {
  const AllAnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          "responsive admin dashboard web and mobile.",
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "complete e-Commerce app UI.",
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "chat app with Firebase.",
          speed: Duration(milliseconds: 60),
        ),
      ],
    );
  }
}
