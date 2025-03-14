import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:old_portfolio/models/experience_model.dart';
import 'package:old_portfolio/utils/constants.dart';
import 'package:old_portfolio/utils/launch_custom_url.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({
    super.key,
    required this.experience,
  });

  final ExperienceModel experience;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kSecondaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            experience.name,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Text(experience.source),
          const SizedBox(height: kDefaultPadding),
          Text(
            experience.text,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              height: 1.5,
            ),
          ),
          SizedBox(height: kDefaultPadding / 3),
          InkWell(
            onTap: () {
              launchCustomUrl(context, experience.url);
            },
            child: Text(
              'Read More',
              style: TextStyle(
                height: 1.5,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
