import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/main.dart';
import 'package:personalwebsite/section/about_page/page_about.dart';
import 'package:personalwebsite/section/contact_page/page_contact.dart';
import 'package:personalwebsite/section/footer_page/page_footer.dart';
import 'package:personalwebsite/section/home_page/page_home.dart';
import 'package:personalwebsite/section/looking_for_job_page/page_looking_for_job.dart';
import 'package:personalwebsite/section/my_skills_page/page_my_skills.dart';
import 'package:personalwebsite/section/my_workethics_page/page_my_work_ethics.dart';
import 'package:personalwebsite/section/page_main/main_core/Widget/slider_menu_drawer.dart';
import 'package:personalwebsite/section/page_main/main_core/main_dimonsions.dart';
import 'package:personalwebsite/section/portfolio_page/page_portfolio.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

bool isAppBarDelayStart = false;
ValueNotifier<bool> initialOpeningNotifier = ValueNotifier(true);
ValueNotifier<bool> gotoTopButtonNotifier = ValueNotifier(false);

List<Widget> pagesList = [
  const HomePage3(),
  const AboutPage(),
  PortfolioPage(),
  const MyWorkEthicsPage(),
  const SkillsPage(),
  const LookingForJob(),
  const ContactPage(),
  const Footer()
];

class PageMain extends StatelessWidget {
  PageMain({Key? key}) : super(key: key);

  static final ItemScrollController itemScrollController =
      ItemScrollController();
  static final ItemPositionsListener itemPositionListner =
      ItemPositionsListener.create();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.black,
        systemNavigationBarIconBrightness: Brightness.dark));
    return SliderHomePageDrawer(
      mainPageWidget: SliderMenuDrawer(
        mainPageWidget: Container(
          color: Colors.black,
          child: NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final scrollPixels = notification.metrics.pixels;
              gotoTopButtonNotifier.value =
                  scrollPixels >= mainHeight(100) ? true : false;
              final scrollDirection = notification.direction.name;
              if (scrollDirection == "reverse") {
                drawerMenuClose();
                MyApp.appBarNotifier.value = false;
              } else if (scrollDirection == "forward") {
                drawerMenuClose();
                MyApp.appBarNotifier.value = true;
              }
              MyApp.appBarImageCircle = MyApp.appBarCircleImage();
              MyApp.appBarTitle = "Abdulla";
              MyApp.appBarBackgroundColor = Colors.redAccent[700];
              MyApp.appBarNotifier.notifyListeners();
              if (isAppBarDelayStart == false &&
                  MyApp.appBarNotifier.value == true) {
                isAppBarDelayStart = true;
                Future.delayed(const Duration(seconds: 5), () {
                  /////////////////////
                  MyApp.appBarNotifier.value = true;
                  MyApp.appBarImageCircle = null;
                  MyApp.appBarTitle = "";
                  MyApp.appBarBackgroundColor = Colors.redAccent.withOpacity(0);
                  MyApp.appBarNotifier.notifyListeners();
                  /////////////////////
                  isAppBarDelayStart = false;
                  Future.delayed(const Duration(seconds: 5), () {
                    MyApp.appBarNotifier.value = false;
                    MyApp.appBarNotifier.notifyListeners();
                  });
                });
              } else {
                //
              }

              return true;
            },
            child: Stack(
              children: [
                ScrollablePositionedList.builder(
                  itemScrollController: itemScrollController,
                  itemCount: pagesList.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return pagesList[index];
                  },
                ),
                Positioned(
                  bottom: 10,
                  right: 5,
                  child: ValueListenableBuilder(
                      valueListenable: gotoTopButtonNotifier,
                      builder: (context, newValue, _) {
                        return newValue == false
                            ? SizedBox()
                            : CircleAvatar(
                                backgroundColor:
                                    Colors.grey[700]?.withOpacity(0.5),
                                child: IconButton(
                                  onPressed: () {
                                    itemScrollController.scrollTo(
                                      index: 1,
                                      duration:
                                          const Duration(milliseconds: 500),
                                    );
                                  },
                                  icon: Icon(
                                    Icons.keyboard_double_arrow_up_rounded,
                                    color: Colors.redAccent.withOpacity(0.8),
                                  ),
                                ),
                              );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

drawerMenuClose() {
  final drawerState = SliderMenuDrawer.sliderMenuDrawerKey.currentState;
  if (drawerState != null) {
    drawerState.isDrawerOpen
        ? drawerState.closeSlider()
        // : drawerState.openSlider();
        : null;
  }
}

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class HomePage3 extends StatelessWidget {
  const HomePage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mainShortSize(10),
      color: Colors.black,
    );
  }
}

class MyServicesPage extends StatelessWidget {
  const MyServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class VisitMyWorksAndCode extends StatelessWidget {
  const VisitMyWorksAndCode({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class SocialMediaIconsPosts extends StatelessWidget {
  const SocialMediaIconsPosts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


////// copyRight