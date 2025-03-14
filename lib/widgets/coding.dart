import 'package:flutter/material.dart';
import 'package:old_portfolio/utils/constants.dart';
import 'package:old_portfolio/widgets/animated_linear_progress_indicator.dart';

// TODO: Always update data.

class Coding extends StatelessWidget {
  const Coding({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.9,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: "C++",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.58,
          label: "Python",
        ),
      ],
    );
  }
}
