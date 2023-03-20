import 'package:flutter/material.dart';
import 'package:personalwebsite/section/about_page/page_about.dart';
import 'package:personalwebsite/section/contact_page/page_contact.dart';
import 'package:personalwebsite/section/footer_page/page_footer.dart';
import 'package:personalwebsite/section/hireme_page/page_hireme.dart';
import 'package:personalwebsite/section/my_skills_page/page_my_skills.dart';
import 'package:personalwebsite/section/my_workethics_page/page_my_work_ethics.dart';
import 'package:personalwebsite/section/page_main/page_main.dart';
import 'package:personalwebsite/section/portfolio_page/page_portfolio.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

List<Widget> pagesList = [
  const HomePage3(),
  const AboutPage(),
  const PortfolioPage(),
  const MyWorkEthicsPage(),
  const SkillsPage(),
  const LookingForJob(),
  const ContactPage(),
  const Footer()
];


ScrollablePositionedList mainPageListView() {
  return ScrollablePositionedList.builder(
    itemScrollController: PageMain.itemScrollController,
    itemCount: pagesList.length,
    shrinkWrap: true,
    itemBuilder: (BuildContext context, int index) {
      return pagesList[index];
    },
  );
}
