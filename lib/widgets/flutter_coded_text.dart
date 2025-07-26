import 'package:flutter/material.dart';
import 'package:old_portfolio/utils/constants.dart';

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "flutter",
            style: TextStyle(color: kPrimaryColor),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}
