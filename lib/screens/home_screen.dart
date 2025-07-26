import 'package:flutter/material.dart';
import 'package:old_portfolio/screens/master_screen.dart';
import 'package:old_portfolio/utils/constants.dart';
import 'package:old_portfolio/widgets/heighlights.dart';
import 'package:old_portfolio/widgets/home_banner.dart';
import 'package:old_portfolio/widgets/my_projects.dart';
import 'package:old_portfolio/widgets/experiences.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MasterScreen(
      children: [
        SizedBox(height: kDefaultPadding),
        HomeBanner(),
        HighLightsInfo(),
        MyProjects(),
        Experiences(),
      ],
    );
  }
}
