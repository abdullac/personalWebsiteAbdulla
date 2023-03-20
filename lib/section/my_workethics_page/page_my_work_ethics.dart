import 'package:flutter/material.dart';
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
        color: Colors.black,
        child: Column(
          children: [
            sectionHeading(workEthicHeading, mainHeight(18)),
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
        color: Colors.black,
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
      color: Colors.redAccent[700]?.withOpacity(0.8),
    );
    List<Widget> workEthicPointWidgetList = [];
    for (int index = 0; index < workethicPointsList.length; index++) {
      workEthicPointWidgetList.add(Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(0.5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: checkIcon,
              ),
              Text(workethicPointsList[index])
            ],
          ),
        ),
      ));
    }
    return workEthicPointWidgetList;
  }
}
