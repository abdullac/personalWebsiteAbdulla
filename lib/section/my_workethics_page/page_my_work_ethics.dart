import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalwebsite/core/constents/colors.dart';
import 'package:personalwebsite/core/constents/text_sizes.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/page_main/widgets/section_heading.dart';
import 'package:personalwebsite/section/my_workethics_page/core/workethics_constents.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MyWorkEthicsPage extends StatelessWidget {
  const MyWorkEthicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInfo) {
      Screen(sizingInfo: sizingInfo);
      return Container(
        height: myWorkEthicsAreaHeight(),
        color: kBlack,
        child: Column(
          children: [
            sectionHeading(workEthicHeading),
            myWorkEthicsPoints(),
          ],
        ),
      );
    });
  }

  Flexible myWorkEthicsPoints() {
    return Flexible(
      flex: 3,
      child: Container(
        color: kTransparent,
        child: GridView(
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(8),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: myWorkEthicsGridCrossAxisCount(),
              crossAxisSpacing: 5,
              mainAxisSpacing: 0,
              childAspectRatio: 10),
          children: myWorkEthicPointWidgetList(),
        ),
      ),
    );
  }

  List<Widget> myWorkEthicPointWidgetList() {
    Icon checkIcon = Icon(
      Icons.radio_button_checked,
      color: kRed05,
    );
    List<Widget> workEthicPointWidgetList = [];
    for (int index = 0; index < workethicPointsList.length; index++) {
      workEthicPointWidgetList.add(Container(
        color: kTransparent,
        child: Padding(
          padding: const EdgeInsets.all(0.5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: checkIcon,
              ),
              Flexible(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(
                    workethicPointsList[index],
                    style: GoogleFonts.varelaRound(
                      // fontSize: mainShortSize(3.3),
                      fontSize: textSize2(),
                      color: kWhite80,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ));
    }
    return workEthicPointWidgetList;
  }
}
