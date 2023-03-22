import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalwebsite/core/constents/colors.dart';
import 'package:personalwebsite/core/constents/text_sizes.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/page_main/widgets/section_heading.dart';
import 'package:personalwebsite/section/hireme_page/core/hireme_constents.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'dart:math' as math;

class LookingForJob extends StatelessWidget {
  const LookingForJob({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInfo) {
        Screen(sizingInfo: sizingInfo);
        return Container(
          height: mainHeight(78),
          color: kBlack,
          child: Column(
            children: [
              sectionHeading(hiremeHeading),
              hiremeContents(),
            ],
          ),
        );
      },
    );
  }

  Widget hiremeContents() {
    return Flexible(
      flex: 25,
      child: Container(
        color: kTransparent,
        child: Center(
          child: Padding(
            padding: hiremeContentsPadding(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                devicesIcons(),
                hiremeTextContent(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Opacity devicesIcons() {
  return Opacity(
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
  );
}

RichText hiremeTextContent() {
  return RichText(
    textAlign: TextAlign.justify,
    text: TextSpan(
      text: hireText1,
      style: GoogleFonts.varelaRound(
          textStyle: TextStyle(
        color: kWhite80,
        // fontSize: mainShortSize(3.3),
        fontSize: textSize2(),
      )),
      children: [
        TextSpan(
          text: hireText4,
          style: TextStyle(
            color: kRedAccent,
            fontWeight: FontWeight.w500,
          ),
        ),
        TextSpan(
          text: hireText5,
          style: TextStyle(
            color: kWhite80,
          ),
        ),
        TextSpan(
          text: hireText2,
          style: TextStyle(
            color: kRedAccent,
            fontWeight: FontWeight.w500,
          ),
        ),
        TextSpan(
          text: hireText3,
          style: TextStyle(
            color: kWhite80,
          ),
        ),
      ],
    ),
  );
}
