import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/page_main/widgets/section_heading.dart';
import 'package:personalwebsite/section/about_page/core/about_constends.dart';
import 'package:personalwebsite/section/about_page/core/widgets/about_image_shade_container.dart';
import 'package:personalwebsite/section/about_page/core/widgets/about_imagee_container.dart';
import 'package:personalwebsite/section/about_page/core/widgets/about_text_container.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';
import 'package:responsive_builder/responsive_builder.dart';

//// aboutPage - please make resume CV button
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInfo) {
        Screen(sizingInfo: sizingInfo);
        return Stack(
          children: [
            aboutBackgroundImage(),
            aboutHeadingAndText(),
          ],
        );
      },
    );
  }

  Align aboutBackgroundImage() {
    return Align(
      alignment: Alignment.topLeft,
      child: Transform.scale(
        scaleX: -1,
        origin: Offset(mainWidth(mainIsLandScape() ? -7 : 0), 0),
        child: Opacity(
          opacity: 0.7,
          child: Stack(
            children: [
              aboutImageContainer(),
              aboutImageShadeContainer(),
            ],
          ),
        ),
      ),
    );
  }
}

Column aboutHeadingAndText() {
  return Column(
    children: [
      sectionHeading(aboutHeading),
      aboutTextContainer(),
    ],
  );
}


//// aboutPage - please make resume CV button