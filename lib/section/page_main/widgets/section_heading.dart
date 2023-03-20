import 'package:flutter/material.dart';
import 'package:personalwebsite/section/page_main/core/main_constents.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';
import 'package:bordered_text/bordered_text.dart';

Widget sectionHeading(String title, [double? height]) {
  return Container(
    color: Colors.black,
    height: height,
    child: Center(
        child: Container(
      padding: sectionTitlePadding(),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/headlinebackground.png"),
              fit: BoxFit.fill)),
      child: BorderedText(
        strokeColor: Colors.blueGrey.withOpacity(0.3),
        child: Text(
          title,
          style: mainHeadLineStyle(),
        ),
      ),
    )),
  );
}

