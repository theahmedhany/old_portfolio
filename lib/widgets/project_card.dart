import 'package:flutter/material.dart';
import 'package:old_portfolio/models/Projects_model.dart';
import 'package:old_portfolio/utils/constants.dart';
import 'package:old_portfolio/utils/launch_custom_url.dart';

// TODO: Always update data.

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project,
  });

  final ProjectsModel project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kSecondaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              project.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          Expanded(
            child: Text(
              project.description,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(height: 1.5),
            ),
          ),
          TextButton(
            onPressed: () {
              launchCustomUrl(context, project.url);
            },
            child: Text(
              "Read More >>",
              style: TextStyle(color: kPrimaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
