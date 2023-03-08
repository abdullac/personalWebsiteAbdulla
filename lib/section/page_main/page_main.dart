import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/core/transparent_screen/variables/colors.dart';
import 'package:personalwebsite/section/about_page/page_about.dart';
import 'package:personalwebsite/section/contact_page/page_contact.dart';
import 'package:personalwebsite/section/home_page/home_page_real/home_page_real.dart';
import 'package:personalwebsite/section/home_page/page_home.dart';
import 'package:personalwebsite/section/looking_for_job_page/page_looking_for_job.dart';
import 'package:personalwebsite/section/my_skills_page/page_my_skills.dart';
import 'package:personalwebsite/section/my_workethics_page/page_my_work_ethics.dart';
import 'package:personalwebsite/section/page_main/main_dimonsion/main_dimonsions.dart';
import 'package:personalwebsite/section/portfolio_page/page_portfolio.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'dart:math' as math;
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

List<Widget> pagesList = const [
  HomePage3(),
  AboutPage(),
  PortfolioPage(),
  MyWorkEthicsPage(),
  SkillsPage(),
  LookingForJob(),
  ContactPage(),
];

class PageMain extends StatelessWidget {
  PageMain({Key? key}) : super(key: key);

  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionListner =
      ItemPositionsListener.create();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.black,
        systemNavigationBarIconBrightness: Brightness.dark));
    return Container(
      color: Colors.red,
      child: ScrollablePositionedList.builder(
        itemScrollController: itemScrollController,
        itemCount: pagesList.length,
        itemBuilder: (BuildContext context, int index) {
          return pagesList[index];
        },
      ),
    );
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
      height: 10,
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