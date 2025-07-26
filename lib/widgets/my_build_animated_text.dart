import 'package:flutter/material.dart';
import 'package:old_portfolio/utils/constants.dart';
import 'package:old_portfolio/utils/responsive.dart';
import 'package:old_portfolio/widgets/all_animated_text.dart';
import 'package:old_portfolio/widgets/flutter_coded_text.dart';

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.titleMedium!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: kDefaultPadding / 2),
          Text("I build "),
          Responsive.isMobile(context)
              ? Expanded(child: AllAnimatedText())
              : AllAnimatedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: kDefaultPadding / 2),
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
        ],
      ),
    );
  }
}
