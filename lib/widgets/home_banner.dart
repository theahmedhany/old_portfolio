import 'package:flutter/material.dart';
import 'package:old_portfolio/utils/constants.dart';
import 'package:old_portfolio/utils/launch_custom_url.dart';
import 'package:old_portfolio/utils/responsive.dart';
import 'package:old_portfolio/widgets/my_build_animated_text.dart';

// TODO: Always update data.

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                "assets/images/bg.jpeg",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: kDarkColor.withValues(alpha: 0.66),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Discover my Amazing \nArt Space!",
                    style: Responsive.isDesktop(context)
                        ? Theme.of(context).textTheme.displaySmall!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.headlineSmall!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                  ),
                  if (Responsive.isMobileLarge(context))
                    const SizedBox(height: kDefaultPadding),
                  if (!Responsive.isMobileLarge(context))
                    SizedBox(height: kDefaultPadding),
                  MyBuildAnimatedText(),
                  SizedBox(height: kDefaultPadding),
                  if (!Responsive.isMobileLarge(context))
                    ElevatedButton(
                      onPressed: () {
                        launchCustomUrl(
                            context, 'https://linktr.ee/theahmedhany');
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding * 2,
                          vertical: kDefaultPadding,
                        ),
                        backgroundColor: kPrimaryColor,
                      ),
                      child: Text(
                        "EXPLORE NOW",
                        style: TextStyle(color: kDarkColor),
                      ),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
