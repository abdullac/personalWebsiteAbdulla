import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/page_main/main_core/main_dimonsions.dart';
import 'package:personalwebsite/section/page_main/main_core/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
              sectionHeading("About",mainHeight(20)),
              // aboutHeading(),
              mainIsLandScape()
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: aboutPortions(),
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: aboutPortions(),
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
      aboutImagePortion(),
      aboutTextsPortion(),
    ];
  }

  Widget aboutImagePortion() {
    return Container(
      width: aboutImageSize().width,
      height: aboutImageSize().height,
      color: Colors.black,
      child: circleProfileImage(),
    );
  }

  Widget aboutTextsPortion() {
    return Container(
      color: Colors.black,
      height: aboutDetailSize().height,
      width: aboutDetailSize().width,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 16),
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
              loremipsom,
              textAlign: TextAlign.justify,
              style: mainDescriptionDetailStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
