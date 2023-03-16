import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/home_page/home_page_real/home_page_real.dart';
import 'package:personalwebsite/section/my_skills_page/myskills_dimonsion/myskills_dimonsions.dart';
import 'package:personalwebsite/section/page_main/main_core/main_dimonsions.dart';
import 'package:personalwebsite/section/page_main/main_core/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInfo) {
      Screen(sizingInfo: sizingInfo);
      return Container(
        height: mainHeight(100),
        color: Colors.black,
        child: Column(
          children: [
            sectionHeading("My Skills"),
            // mySkillsHeading(),
            mySkillsGridview(),
          ],
        ),
      );
    });
  }

  // Flexible mySkillsHeading() {
  //   return Flexible(
  //     flex: 3,
  //     child: Container(
  //       // color: Colors.cyan[700],
  //       color: Colors.black,
  //       child: Center(
  //         child: Text(
  //           "My Skills",
  //           style: mainHeadLineStyle(),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  Flexible mySkillsGridview() {
    return Flexible(
      flex: 17,
      child: Container(
        // color: Colors.cyan[900],
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: mySkilsGridcrosAxisCount(),
            ),
            children: [
              mySkillsItem(networkImageList[7],"Java"),
              mySkillsItem(networkImageList[0],"HTML"),
              mySkillsItem(networkImageList[1],"CSS"),
              mySkillsItem(networkImageList[2],"Java Script"),
              mySkillsItem(networkImageList[3],"JQuery"),
              mySkillsItem(networkImageList[4],"Boot Strap"),
              mySkillsItem(networkImageList[5],"Dart"),
              mySkillsItem(networkImageList[6],"Flutter"),
              // mySkillsItem(imageList[1],"hjfhgdsjf"),
              // mySkillsItem(imageList[2],"hjfhgdsjf"),
              // mySkillsItem(imageList[3],"hjfhgdsjf"),
              // mySkillsItem(imageList[4],"hjfhgdsjf"),
              // mySkillsItem(imageList[5],"hjfhgdsjf"),
              // mySkillsItem(imageList[6],"hjfhgdsjf"),
              // mySkillsItem(imageList[7],"hjfhgdsjf"),
              // mySkillsItem(imageList[1],"hjfhgdsjf"),
              // mySkillsItem(imageList[2],"hjfhgdsjf"),
              // mySkillsItem(imageList[3],"hjfhgdsjf"),
              // mySkillsItem(imageList[4],"hjfhgdsjf"),
              // mySkillsItem(imageList[5],"hjfhgdsjf"),
            ],
          ),
        ),
      ),
    );
  }

  Column mySkillsItem(String assetImage, String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
          assetImage,
          height: mySkilsGridItemImageHeight(),
        ),
        Text(title)
      ],
    );
  }
}
