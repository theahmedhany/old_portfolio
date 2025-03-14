import 'package:flutter/material.dart';
import 'package:old_portfolio/models/Projects_model.dart';
import 'package:old_portfolio/utils/constants.dart';
import 'package:old_portfolio/utils/responsive.dart';
import 'package:old_portfolio/widgets/project_card.dart';

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    super.key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  });

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: demoProjects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: Responsive.isMobile(context)
            ? 1
            : Responsive.isMobileLarge(context)
                ? 2
                : Responsive.isTablet(context)
                    ? 2
                    : 3,
        childAspectRatio: Responsive.isMobile(context)
            ? 1.8
            : Responsive.isMobileLarge(context)
                ? 1.7
                : Responsive.isTablet(context)
                    ? 1.6
                    : 1.5,
        crossAxisSpacing: kDefaultPadding,
        mainAxisSpacing: kDefaultPadding,
      ),
      itemBuilder: (context, index) => ProjectCard(
        project: demoProjects[index],
      ),
    );
  }
}
