import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/core/transparent_screen/variables/colors.dart';
import 'package:personalwebsite/section/my_workethics_page/dimonsion/my_workethics_dimonsion.dart';
import 'package:personalwebsite/section/page_main/main_core/main_dimonsions.dart';
import 'package:personalwebsite/section/page_main/main_core/widgets.dart';
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
            sectionHeading("My Work Ethics", mainHeight(18)),
            // myWorkEthicsHeading(),
            myWorkEthicsPoints(),
          ],
        ),
      );
    });
  }

  // Flexible myWorkEthicsHeading() {
  //   return Flexible(
  //     flex: myWorkEthicsGridCrossAxisCount(),
  //     child: Container(
  //       height: mainHeight(15),
  //       color: Colors.black,
  //       child: Center(
  //         child: Container(
  //           padding: EdgeInsets.only(left: 30,right: 30,bottom: 20),
  //       decoration: const BoxDecoration(
  //           image: DecorationImage(
  //         image: AssetImage("assets/headlinebackground.png"),fit: BoxFit.fill
  //       )),
  //       child: Text(
  //         "My Work Ethics",
  //         style: mainHeadLineStyle(),
  //       ),
  //     ),
  //       ),
  //     ),
  //   );
  // }

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
            // childAspectRatio: 9,
            childAspectRatio: 10
          ),
          children: [
            myWorkEthicPoint("Aim to make every work complete with perfect."),
            myWorkEthicPoint("Working longer hours with responsibility."),
            myWorkEthicPoint("Friendly attitude towards everyone."),
            myWorkEthicPoint("Tackle work with positive attitude."),
            myWorkEthicPoint("Ready to work with pressure."),
            myWorkEthicPoint("Learning new things, including to projects."),
          ],
        ),
      ),
    );
  }

  Widget myWorkEthicPoint(String workEthicsPoint) {
    Icon checkIcon = Icon(
      Icons.radio_button_checked,
      // color: green600,
      color: Colors.redAccent[700]?.withOpacity(0.8),
    );
    return Container(
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
            Text(workEthicsPoint)
          ],
        ),
      ),
    );
  }
}
