import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:old_portfolio/utils/constants.dart';
import 'package:old_portfolio/utils/launch_custom_url.dart';
import 'package:old_portfolio/utils/responsive.dart';
import 'package:old_portfolio/widgets/knowledge.dart';
import 'area_info_text.dart';
import 'coding.dart';
import 'my_info.dart';
import 'skills.dart';

// TODO: Always update data.

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return _getDrawerType(context);
  }

  Widget _getDrawerType(BuildContext context) {
    if (Responsive.isMobile(context)) {
      return CustomMobileDrawer();
    } else if (Responsive.isMobileLarge(context)) {
      return CustomLargeMobileDrawer();
    } else if (Responsive.isTablet(context)) {
      return CustomLargeMobileDrawer();
    } else {
      return CustomMobileDrawer();
    }
  }
}

class CustomMobileDrawer extends StatelessWidget {
  const CustomMobileDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.sizeOf(context).width * 0.8,
      backgroundColor: kDarkColor,
      child: Column(
        children: [
          MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(kDefaultPadding),
              child: Column(
                children: [
                  AreaInfoText(
                    title: "Country",
                    text: "Egypt",
                  ),
                  AreaInfoText(
                    title: "City",
                    text: "Mansoura",
                  ),
                  AreaInfoText(
                    title: "Age",
                    text: "21",
                  ),
                  Skills(),
                  SizedBox(height: kDefaultPadding),
                  Coding(),
                  Knowledge(),
                  Divider(),
                  SizedBox(height: kDefaultPadding / 2),
                  TextButton(
                    onPressed: () async {
                      launchCustomUrl(
                        context,
                        'https://drive.google.com/file/d/1--rVPMh51CqLwezHF4V5v4JwlVY7CXBg/view?usp=drive_link',
                      );
                    },
                    child: FittedBox(
                      child: Row(
                        children: [
                          Text(
                            "DOWNLOAD CV",
                            style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyLarge!.color,
                            ),
                          ),
                          SizedBox(width: kDefaultPadding / 2),
                          SvgPicture.asset(
                            "assets/icons/download.svg",
                            width: 20,
                            height: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: kDefaultPadding),
                    color: kSecondaryColor,
                    child: Row(
                      children: [
                        Spacer(),
                        IconButton(
                          onPressed: () {
                            launchCustomUrl(
                                context, 'mailto:a7medhanyshokry@gmail.com');
                          },
                          icon: Center(
                            child: SvgPicture.asset(
                              "assets/icons/email.svg",
                              width: 22,
                              height: 22,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            launchCustomUrl(context,
                                'https://www.linkedin.com/in/theahmedhany/');
                          },
                          icon: SvgPicture.asset(
                            "assets/icons/linkedin.svg",
                            width: 18,
                            height: 18,
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            launchCustomUrl(
                                context, 'https://github.com/theahmedhany');
                          },
                          icon: SvgPicture.asset(
                            "assets/icons/github.svg",
                            width: 18,
                            height: 18,
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            launchCustomUrl(
                                context, 'https://x.com/theahmedhany');
                          },
                          icon: SvgPicture.asset(
                            "assets/icons/x.svg",
                            width: 18,
                            height: 18,
                          ),
                        ),
                        // IconButton(
                        //   onPressed: () async {
                        //     launchCustomUrl(
                        //         context, 'https://linktr.ee/theahmedhany');
                        //   },
                        //   icon: SvgPicture.asset(
                        //     "assets/icons/linktree.svg",
                        //     width: 20,
                        //     height: 20,
                        //   ),
                        // ),
                        Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomLargeMobileDrawer extends StatelessWidget {
  const CustomLargeMobileDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.sizeOf(context).width * 0.7,
      backgroundColor: kDarkColor,
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  MyInfo(),
                  Padding(
                    padding: EdgeInsets.all(kDefaultPadding),
                    child: Column(
                      children: [
                        AreaInfoText(
                          title: "Country",
                          text: "Egypt",
                        ),
                        AreaInfoText(
                          title: "City",
                          text: "Mansoura",
                        ),
                        AreaInfoText(
                          title: "Age",
                          text: "21",
                        ),
                        Skills(),
                        SizedBox(height: kDefaultPadding),
                        Coding(),
                        Knowledge(),
                        Divider(),
                        SizedBox(height: kDefaultPadding / 2),
                        TextButton(
                          onPressed: () async {
                            launchCustomUrl(context,
                                'https://drive.google.com/file/d/1dC9vW1uBHu11VrwthYH7twY21ISu2BWt/view?usp=drive_link');
                          },
                          child: FittedBox(
                            child: Row(
                              children: [
                                Text(
                                  "DOWNLOAD CV",
                                  style: TextStyle(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .color,
                                  ),
                                ),
                                SizedBox(width: kDefaultPadding / 2),
                                SvgPicture.asset(
                                  "assets/icons/download.svg",
                                  width: 20,
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: kDefaultPadding),
                          color: kSecondaryColor,
                          child: Row(
                            children: [
                              Spacer(),
                              IconButton(
                                onPressed: () {
                                  launchCustomUrl(context,
                                      'mailto:a7medhanyshokry@gmail.com');
                                },
                                icon: Center(
                                  child: SvgPicture.asset(
                                    "assets/icons/email.svg",
                                    width: 22,
                                    height: 22,
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () async {
                                  launchCustomUrl(context,
                                      'https://www.linkedin.com/in/theahmedhany/');
                                },
                                icon: SvgPicture.asset(
                                  "assets/icons/linkedin.svg",
                                  width: 18,
                                  height: 18,
                                ),
                              ),
                              IconButton(
                                onPressed: () async {
                                  launchCustomUrl(context,
                                      'https://github.com/theahmedhany');
                                },
                                icon: SvgPicture.asset(
                                  "assets/icons/github.svg",
                                  width: 18,
                                  height: 18,
                                ),
                              ),
                              IconButton(
                                onPressed: () async {
                                  launchCustomUrl(
                                      context, 'https://x.com/theahmedhany');
                                },
                                icon: SvgPicture.asset(
                                  "assets/icons/x.svg",
                                  width: 18,
                                  height: 18,
                                ),
                              ),
                              // IconButton(
                              //   onPressed: () async {
                              //     launchCustomUrl(
                              //         context, 'https://linktr.ee/theahmedhany');
                              //   },
                              //   icon: SvgPicture.asset(
                              //     "assets/icons/linktree.svg",
                              //     width: 20,
                              //     height: 20,
                              //   ),
                              // ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
