import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/page_main/main_core/main_dimonsions.dart';
import 'package:personalwebsite/section/page_main/main_core/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'dart:math' as math;

//// aboutPage - resume CV button
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInfo) {
        Screen(sizingInfo: sizingInfo);
        return Container(
          // height: mainHeight(100),
          // width: mainWidth(100),
          color: Colors.black,
          child: Column(
            children: [
              sectionHeading("About", mainHeight(20)),
              // aboutHeading(),
              Container(
                color: Colors.teal.withOpacity(0),
                height: mainHeight(100),
                // width: mainWidth(100),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Transform.scale(
                        scaleX: -1,
                        origin:
                            Offset(mainWidth(mainIsLandScape() ? -7 : 0), 0),
                        child: Opacity(
                          opacity: 0.7,
                          child: Container(
                            width: mainIsLandScape()
                                ? mainWidth(60)
                                : double.infinity,
                            height: mainIsLandScape()
                                ? mainHeight(100)
                                : mainHeight(100) - mainWidth(30),
                            decoration: BoxDecoration(
                                color: Colors.cyan.withOpacity(0),
                                image: const DecorationImage(
                                    fit: BoxFit.fitHeight,
                                    image: AssetImage(
                                        "assets/myPhotoBigFace.webp"))),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        // height: mainHeight(80),
                        // width: mainWidth(80),
                        // color: Colors.green.withOpacity(0.1),
                        child:
                            //  mainIsLandScape()
                            //     ? Row(
                            //         mainAxisAlignment: MainAxisAlignment.center,
                            //         children: aboutPortions(),
                            //       )
                            //     :
                            Column(
                          mainAxisAlignment: mainIsLandScape()
                              ? MainAxisAlignment.center
                              : MainAxisAlignment.end,
                          children: aboutPortions(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // Widget aboutHeading() {
  //   return Container(
  //     color: Colors.black,
  //     height: mainHeight(20),
  //     child: Center(
  //         child: Container(
  //           padding: EdgeInsets.only(left: 30,right: 30,bottom: 20),
  //       decoration: const BoxDecoration(
  //           image: DecorationImage(
  //         image: AssetImage("assets/headlinebackground.png"),fit: BoxFit.fill
  //       )),
  //       child: Text(
  //         "About",
  //         style: mainHeadLineStyle(),
  //       ),
  //     )),
  //   );
  // }

  List<Widget> aboutPortions() {
    return [
      // aboutImagePortion(),
      aboutTextsPortion(),
    ];
  }

  // Widget aboutImagePortion() {
  //   return Container(
  //     width: aboutImageSize().width,
  //     height: aboutImageSize().height,
  //     color: Colors.black,
  //     child: circleProfileImage(),
  //   );
  // }

  Widget aboutTextsPortion() {
    return Container(
      // height: aboutDetailSize().height,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(1),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(mainShortSize(3)),
            topLeft: Radius.circular(mainShortSize(3))),
        gradient: LinearGradient(
            colors: [
              Colors.blueGrey[800]!.withOpacity(0.4),
              Colors.black12.withOpacity(0.03),
              Colors.black12.withOpacity(0.04),
              Colors.black12.withOpacity(0.45),
              Colors.black,
            ],
            stops: const [
              0.001,
              0.0,
              0.07,
              0.2,
              0.35,
            ],
            transform: mainIsLandScape()
                ? null
                : const GradientRotation(math.pi * 90 / 180)),
      ),
      width: aboutDetailSize().width,
      child: Padding(
        padding: EdgeInsets.only(
            left: mainShortSize(3),
            right: mainShortSize(3),
            bottom: mainShortSize(3),
            top: mainShortSize(3)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                    text: "Hai..., I 'm  ",
                    style: mainDescriptionStyle(),
                    children: [
                      TextSpan(
                        text: "Abdulla.",
                        style: mainHighlightStyle1(),
                      ),
                      TextSpan(
                        text: "\nAnd i 'm a  ",
                        style: mainDescriptionStyle(),
                      ),
                      TextSpan(
                        text: "Flutter Developer.\n",
                        style: mainHighlightStyle2(),
                      ),
                    ])),
            Text(
              aboutDescription,
              textAlign: TextAlign.justify,
              style: mainDescriptionDetailStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
