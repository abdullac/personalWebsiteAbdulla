import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/page_main/main_core/main_dimonsions.dart';
import 'package:personalwebsite/section/page_main/main_core/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'dart:math' as math;

class LookingForJob extends StatelessWidget {
  const LookingForJob({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInfo) {
      Screen(sizingInfo: sizingInfo);
      return Container(
        height: mainHeight(70),
        color: Colors.black,
        child: Column(
          children: [
            sectionHeading("Hire Me"),
            // lookingForJobHeading(),
            lookingForJobContent(),
          ],
        ),
      );
    });
  }

  //   Flexible lookingForJobHeading() {
  //   return Flexible(
  //     flex: 15,
  //     child: Container(
  //       // color: Colors.teal,
  //       color: Colors.black,
  //       child: Center(
  //         child: Text(
  //           "Hire Me",
  //           style: mainHeadLineStyle(),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  Flexible lookingForJobContent() {
    return Flexible(
      flex: 25,
      child: Container(
        // color: Colors.teal[900],
        color: Colors.black,
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(
                mainIsPortraitMobile() ? 8.0 : mainShortSize(15)),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Opacity(
                  opacity: 0.8,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.public,
                        color: Colors.blue[800],
                      ),
                      Icon(
                        Icons.desktop_windows_outlined,
                        color: Colors.red[800],
                      ),
                      Icon(
                        Icons.laptop_mac_outlined,
                        color: Colors.brown[400],
                      ),
                      Transform.rotate(
                          angle: math.pi * -90 / 180,
                          child: Icon(
                            Icons.tablet_mac_outlined,
                            color: Colors.green[800],
                          )),
                      Icon(
                        Icons.smartphone_outlined,
                        color: Colors.purple[400],
                      ),
                      Icon(
                        Icons.devices_other_outlined,
                        color: Colors.pink[700],
                      ),
                    ],
                  ),
                ),
                RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                      text: hireText1,
                      style: TextStyle(
                        color: Colors.white60.withOpacity(0.6),
                      ),
                      children: [
                        TextSpan(
                          text: hireText4,
                          style: TextStyle(
                              color: Colors.red[300]?.withOpacity(0.8),
                              fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                          text: hireText5,
                          style: TextStyle(
                            color: Colors.white60.withOpacity(0.6),
                          ),
                        ),
                        TextSpan(
                          text: hireText2,
                          style: TextStyle(
                              color: Colors.red[300]?.withOpacity(0.8),
                              fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                          text: hireText3,
                          style: TextStyle(
                            color: Colors.white60.withOpacity(0.6),
                          ),
                        ),
                      ]),
                ),
                // Text(
                //   hireText,
                //   textAlign: TextAlign.justify,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String hireText =
    "Enthusiastic, highly self-motivated and with a strong passion to acquire new skills in programming, I am here to pursue a growth-oriented career with a company that will provide me with an opportunity to apply my knowledge and skills in the field of software development , which will enable me to contribute my best to the organization.\n\nWe can build applications for Web and defferent types of operating systems like Android, Linux, Windows, ios and Mac. and we can build  responsive applications for different types of devices like Mobile, Tablet and Desktop.";

String hireText1 =
    "Enthusiastic, highly self-motivated and with a strong passion to acquire new skills in programming, I am here to pursue a growth-oriented career with a company that will provide me with an opportunity to apply my knowledge and skills in the field of software development , which will enable me to contribute my best to the organization.\n\nWe can build applications for ";
String hireText2 = "Android, Linux, Windows, ios and Mac";
String hireText3 =
    ". and we can build  responsive applications for different types of devices like Mobile, Tablet and Desktop.";
String hireText4 = "Web";
String hireText5 = " and defferent types of operating systems like ";