import 'package:flutter/material.dart';
import 'package:old_portfolio/utils/constants.dart';
import 'package:old_portfolio/widgets/animated_circular_progress_indicator.dart';

// TODO: Always update data.

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Text(
            "Skills",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.9,
                label: "Flutter",
              ),
            ),
            SizedBox(width: kDefaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.8,
                label: "UI & UX",
              ),
            ),
            SizedBox(width: kDefaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.85,
                label: "Graphic Design",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
