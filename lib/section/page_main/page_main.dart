import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:personalwebsite/main.dart';
import 'package:personalwebsite/section/about_page/page_about.dart';
import 'package:personalwebsite/section/contact_page/page_contact.dart';
import 'package:personalwebsite/section/looking_for_job_page/page_looking_for_job.dart';
import 'package:personalwebsite/section/my_skills_page/page_my_skills.dart';
import 'package:personalwebsite/section/my_workethics_page/page_my_work_ethics.dart';
import 'package:personalwebsite/section/page_main/main_core/Widget/slider_menu_drawer.dart';
import 'package:personalwebsite/section/page_main/main_core/main_dimonsions.dart';
import 'package:personalwebsite/section/portfolio_page/page_portfolio.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

List<Widget> pagesList =  [
  const HomePage3(),
  const AboutPage(),
  PortfolioPage(),
  const MyWorkEthicsPage(),
  const SkillsPage(),
  const LookingForJob(),
  const ContactPage(),
];

class PageMain extends StatelessWidget {
  PageMain({Key? key}) : super(key: key);

  static final ItemScrollController itemScrollController = ItemScrollController();
  static final ItemPositionsListener itemPositionListner =
      ItemPositionsListener.create();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.black,
        systemNavigationBarIconBrightness: Brightness.dark));
    return SliderMenuDrawer(
      appBarTitle: 'Abdulla c',
      mainPageWidget: Container(
        color: Colors.red,
        child: NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final scrollDirection = notification.direction.name;
            if (scrollDirection == "reverse") {
              drawerMenuClose();
              MyApp.appBarNotifier.value = false;
            } else if (scrollDirection == "forward") {
              drawerMenuClose();
              MyApp.appBarNotifier.value = true;
            }
            MyApp.appBarNotifier.notifyListeners();
            return true;
          },
          child: ScrollablePositionedList.builder(
            itemScrollController: itemScrollController,
            itemCount: pagesList.length,
            itemBuilder: (BuildContext context, int index) {
              return pagesList[index];
            },
          ),
        ),
      ),
    );
  }
}

drawerMenuClose() {
  final drawerState = SliderMenuDrawer.sliderDrawerKey.currentState;
  if (drawerState != null) {
    drawerState.isDrawerOpen
        ? drawerState.closeSlider()
        // : drawerState.openSlider();
        :null;
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