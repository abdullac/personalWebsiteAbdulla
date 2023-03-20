import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:personalwebsite/core/constents/colors.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';

/// sliderMenuDrawerListGridItems
List<List<dynamic>> sectionTileItemsLists = [
  [Icons.home, "Home"],
  [Icons.person, "About"],
  [Icons.history, "Portfolio"],
  [Icons.work_history_rounded, "Work Ethics"],
  [Icons.work_rounded, "Skills"],
  [Icons.call_rounded, "Contact"],
];

/// shadow
var sliderMenuDrawerShadow =
    SliderBoxShadow(color: kBlack26, blurRadius: 10, spreadRadius: 1);

/////////  () => ////////
///transform
Matrix4 sliderMenuDrawerTransform(bool newValue) {
  return Matrix4.translationValues(0, newValue == true ? 0 : mainHeight(30), 0);
}

Matrix4 sliderHomepageDrawerTransform(bool newValue) =>
    Matrix4.translationValues(0, newValue == true ? 0 : -100, 0);

BoxDecoration sliderMenuListBackgroundDecoration = BoxDecoration(
    color: kBlack915,
    gradient: LinearGradient(colors: [
      kBlack,
      kBlack915,
    ], stops: const [
      0,
      0.7
    ]));

/// padding
// EdgeInsets sectionTitlePadding() {
//   return EdgeInsets.only(
//     left: mainHeight(2),
//     right: mainHeight(2),
//     bottom: mainHeight(2),
//   );
// }
EdgeInsets sectionTitlePadding() {
  return EdgeInsets.only(
    left: mainShortSize(4),
    right: mainShortSize(4),
    bottom: mainShortSize(4),
  );
}
