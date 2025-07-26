import 'package:flutter/material.dart';
import 'package:old_portfolio/utils/constants.dart';
import 'package:old_portfolio/utils/responsive.dart';
import 'package:old_portfolio/widgets/projects_grid_view.dart';

// TODO: Always update data.

class MyProjects extends StatelessWidget {
  const MyProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Projects",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: kDefaultPadding),
          Responsive(
            mobile: ProjectsGridView(
              crossAxisCount: 1,
              childAspectRatio: 1.7,
            ),
            mobileLarge: ProjectsGridView(crossAxisCount: 2),
            tablet: ProjectsGridView(childAspectRatio: 1.1),
            desktop: ProjectsGridView(),
          )
        ],
      ),
    );
  }
}
