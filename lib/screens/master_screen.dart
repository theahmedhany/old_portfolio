import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:old_portfolio/utils/constants.dart';
import 'package:old_portfolio/utils/responsive.dart';
import 'package:old_portfolio/widgets/side_menu.dart';

class MasterScreen extends StatelessWidget {
  const MasterScreen({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              scrolledUnderElevation: 0,
              backgroundColor: kBackgroundColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: SvgPicture.asset(
                    'assets/icons/menu.svg',
                    colorFilter:
                        ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                ),
              ),
            ),
      drawer: SideMenu(),
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                flex: 2,
                child: SideMenu(),
              ),
            Expanded(
              flex: 7,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...children,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
