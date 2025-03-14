import 'package:flutter/material.dart';
import 'package:old_portfolio/models/experience_model.dart';
import 'package:old_portfolio/utils/constants.dart';
import 'package:old_portfolio/widgets/experience_card.dart';

// TODO: Always update data.

class Experiences extends StatelessWidget {
  const Experiences({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: kDefaultPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
            ),
            child: Text(
              "Experiences",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const SizedBox(height: kDefaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.only(
                left: kDefaultPadding,
              ),
              child: Row(
                children: List.generate(
                  demoExperiences.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(
                      right: kDefaultPadding,
                    ),
                    child: ExperienceCard(
                      experience: demoExperiences[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
