import 'package:flutter/material.dart';
import 'package:old_portfolio/utils/constants.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    super.key,
    required this.percentage,
    required this.label,
  });

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: kDefaultDuration,
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label,
                  style: TextStyle(color: Colors.white),
                ),
                Text("${(value * 100).toInt()}%"),
              ],
            ),
            SizedBox(height: kDefaultPadding / 2),
            LinearProgressIndicator(
              value: value,
              color: kPrimaryColor,
              backgroundColor: kDarkColor,
            ),
          ],
        ),
      ),
    );
  }
}
