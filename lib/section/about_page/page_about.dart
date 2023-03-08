import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/page_main/main_dimonsion/main_dimonsions.dart';
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
              AboutHeading(),
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

  Widget AboutHeading() {
    return Container(
        color: Colors.black,
      height: mainHeight(20),
      child: Center(
          child: Text(
        "About",
        style: mainHeadLineStyle(),
      )),
    );
  }

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
      child: Center(
        child: Transform.scale(
          scaleX: -1.05,
          child: CircleAvatar(//17
          backgroundColor: Colors.black,
              radius: mainHeight(15),
              backgroundImage: const AssetImage("assets/abdulla_photo35.png")),
        ),
      ),
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