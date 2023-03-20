import 'package:flutter/material.dart';

/// button text List
const List<String> buttonNameList = [
  "Home",
  "About",
  "Portfolio",
  "Skills",
  "Work Ethics",
  "Contact",
];

////////  () =>  ////////
Matrix4 appbarTransform(bool newValue) =>
    Matrix4.translationValues(0, newValue == false ? -100 : 0, 0);

Matrix4 appbarMenuIconTransform(bool newValue) {
  return Matrix4.translationValues(
    newValue == false ? -100 : 0,
    newValue == false ? 50 : 0,
    0,
  );
}
