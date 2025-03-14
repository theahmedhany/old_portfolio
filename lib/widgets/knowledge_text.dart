import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:old_portfolio/utils/constants.dart';

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset(
            "assets/icons/check.svg",
            width: 16,
            height: 16,
          ),
          SizedBox(width: kDefaultPadding / 2),
          Text(text),
        ],
      ),
    );
  }
}
