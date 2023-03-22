import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalwebsite/core/constents/colors.dart';
import 'package:personalwebsite/core/constents/text_sizes.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/page_main/widgets/section_heading.dart';
import 'package:personalwebsite/section/my_skills_page/core/skills_constents.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInfo) {
      Screen(sizingInfo: sizingInfo);
      return Container(
        height: mainHeight(100),
        color: kBlack,
        child: Column(
          children: [
            sectionHeading("My Skills"),
            mySkillsGridview(),
          ],
        ),
      );
    });
  }

  Flexible mySkillsGridview() {
    return Flexible(
      flex: 17,
      child: Container(
        color: kTransparent,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: mySkilsGridcrosAxisCount(),
              ),
              children: mySkillsItemsWidgetList()),
        ),
      ),
    );
  }

  List<Widget> mySkillsItemsWidgetList() {
    List<Widget> skillsItemsWidgetList = [];
    for (int index = 0; index < skillsTitleList.length; index++) {
      skillsItemsWidgetList.add(
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
              networkImageList[index],
              height: mySkilsGridItemImageHeight(),
              errorBuilder: (context, error, stackTrace) => Container(
                width: 5,
                height: 5,
                color: kRed05,
              ),
            ),
            Text(skillsTitleList[index],
                style: GoogleFonts.varelaRound(
                    textStyle: TextStyle(
                  fontSize: textSize2(),
                  color: kWhite80,
                )))
          ],
        ),
      );
    }
    return skillsItemsWidgetList;
  }
}
