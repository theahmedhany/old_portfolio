import 'package:flutter/material.dart';
import 'package:old_portfolio/utils/constants.dart';
import 'package:old_portfolio/utils/responsive.dart';
import 'package:old_portfolio/widgets/animated_counter.dart';
import 'heigh_light.dart';

// TODO: Always update data.

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: kDefaultPadding,
        horizontal: kDefaultPadding,
      ),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 30,
                        text: "+",
                      ),
                      label: "GitHub Projects",
                    ),
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 13,
                        text: "K+",
                      ),
                      label: "Stars",
                    ),
                  ],
                ),
                const SizedBox(height: kDefaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 2,
                        text: "K+",
                      ),
                      label: "Visitors",
                    ),
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 20,
                        text: "+",
                      ),
                      label: "Videos",
                    ),
                  ],
                ),
              ],
            )
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeighLight(
                    counter: AnimatedCounter(
                      value: 30,
                      text: "+",
                    ),
                    label: "GitHub Projects",
                  ),
                  HeighLight(
                    counter: AnimatedCounter(
                      value: 13,
                      text: "K+",
                    ),
                    label: "Stars",
                  ),
                  HeighLight(
                    counter: AnimatedCounter(
                      value: 20,
                      text: "+",
                    ),
                    label: "Videos",
                  ),
                  HeighLight(
                    counter: AnimatedCounter(
                      value: 2,
                      text: "K+",
                    ),
                    label: "Visitors",
                  ),
                ],
              ),
            ),
    );
  }
}
