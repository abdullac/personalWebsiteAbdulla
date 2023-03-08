
import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/core/transparent_screen/variables/colors.dart';
import 'package:personalwebsite/section/my_workethics_page/dimonsion/my_workethics_dimonsion.dart';
import 'package:personalwebsite/section/page_main/main_dimonsion/main_dimonsions.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MyWorkEthicsPage extends StatelessWidget {
  const MyWorkEthicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInfo) {
      Screen(sizingInfo: sizingInfo);
      return Container(
        // height: mainHeight(30),
        height: myWorkEthicsAreaHeight(),
        color: Colors.black,
        child: Column(
          children: [
            myWorkEthicsHeading(),
            myWorkEthicsPoints(),
          ],
        ),
      );
    });
  }

  Flexible myWorkEthicsHeading() {
    return Flexible(
      flex: myWorkEthicsGridCrossAxisCount(),
      child: Container(
        height: mainHeight(15),
        color: Colors.black,
        child: Center(
          child: Text(
            "My Work Ethics",
            style: mainHeadLineStyle(),
          ),
        ),
      ),
    );
  }

  Flexible myWorkEthicsPoints() {
    return Flexible(
      flex: 3,
      child: Container(
        color: Colors.black,
        child: GridView(
          padding: const EdgeInsets.all(8),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: myWorkEthicsGridCrossAxisCount(),
              crossAxisSpacing: 5,
              mainAxisSpacing: 0,
              childAspectRatio: 9),
          children: [
            myWorkEthicPoint("Long time Working"),
            myWorkEthicPoint("Perfect Finishing"),
            myWorkEthicPoint("Perfect Finishing"),
            myWorkEthicPoint("Long time Working"),
            myWorkEthicPoint("Long time Working"),
            myWorkEthicPoint("Perfect Finishing"),
          ],
        ),
      ),
    );
  }

  Widget myWorkEthicPoint(String workEthicsPoint) {
    Icon checkIcon = Icon(Icons.radio_button_checked,color: green600,);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: checkIcon,
          ),
          Text(workEthicsPoint)
        ],
      ),
    );
  }
}