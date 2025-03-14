import 'package:flutter/material.dart';
import 'package:old_portfolio/utils/constants.dart';
import 'package:old_portfolio/utils/responsive.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: _getAspectRatio(context),
      child: Container(
        color: kSecondaryColor,
        child: Column(
          children: [
            const Spacer(flex: 3),
            CircleAvatar(
              radius: 90,
              backgroundImage: const AssetImage("assets/images/personal.jpg"),
              backgroundColor: kBackgroundColor,
            ),
            const Spacer(),
            Text(
              "Ahmed Hany",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 8),
            Text(
              "Flutter Developer & UI/UX Designer",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                height: 1.5,
                color: kBodyTextColor,
                fontSize: Responsive.isMobile(context) ? 14 : 12,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  double _getAspectRatio(BuildContext context) {
    if (Responsive.isMobile(context)) {
      return 1;
    } else if (Responsive.isMobileLarge(context)) {
      return 1.5;
    } else if (Responsive.isTablet(context)) {
      return 2;
    } else {
      return 1;
    }
  }
}
