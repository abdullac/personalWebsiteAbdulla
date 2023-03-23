import 'package:flutter/material.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';

/// button text List
const List<String> buttonNameList = [
  // "Home",
  "About",
  "Portfolio",
  "Skills",
  "Work Ethics",
  "Contact",
  "LinkedIn",
];

///  text shadow
List<Shadow> appBarTitleShadow = const [
  Shadow(
    color: Colors.black12,
    offset: Offset(3, 3),
    blurRadius: 0.5,
  ),
];

////////  () =>  ////////
Matrix4 appbarTransform(bool newValue) =>
    Matrix4.translationValues(0, newValue == false ? mainHeight(-15) : 0, 0);

Matrix4 appbarMenuIconTransform(bool newValue) {
  return Matrix4.translationValues(
    newValue == false ? -100 : 0,
    newValue == false ? 50 : 0,
    0,
  );
}
