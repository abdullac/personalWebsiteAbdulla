import 'package:flutter/material.dart';
import 'package:personalwebsite/core/constents/colors.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';
import 'dart:math' as math;

/// text
const String aboutHeading = "About";
const String aboutTitle1 = "Hai..., I 'm  ";
const String aboutTitle2 = "Abdulla.";
const String aboutSubTitle1 = "\nAnd i 'm a  ";
const String aboutSubTitle2 = "Flutter Developer.\n";
const String aboutDescription =
    "One day, I was using a application in the computer and I thought that this is the result of the work of people like us.  And I thought I should do something that could run on a computer like that.\n\nNow, I am a developer for web, android, linux , windows, ios and mac applications. I have  developed some applications with responsiveness for mobile, tablet and desktop. I am using flutter with dart programming language which is cross-platform for building applications. Also, i have earned  a lots of technology based knowledge by creating severel interesting apps. I can build applications with user requirments and i can put my skills to their applications. I am very interested for building applications.";

/// gradient color List
List<Color> aboutTextContainerGradientColorsList = [
  Colors.blueGrey[800]!.withOpacity(mainIsLandScape() ? 0.4 : 0),
  Colors.black12.withOpacity(0.01),
  Colors.black12.withOpacity(0.04),
  Colors.black12.withOpacity(0.45),
  kBlack,
];

List<Color> blueSplashGradientColorsList = [
  Colors.blueAccent.withOpacity(0.05),
  Colors.blueAccent.withOpacity(0.1),
  Colors.blueAccent.withOpacity(0.5),
  Colors.blueAccent.withOpacity(0.8),
  Colors.blueAccent.withOpacity(0.5),
  Colors.blueAccent.withOpacity(0.1),
  Colors.blueAccent.withOpacity(0.05),
];

//////  () =>  //////

/// gradient stops List
// const List<double> aboutTextContainerGradientStopsList = [
//   0.001,
//   0.0,
//   0.07,
//   0.2,
//   0.35,
// ];
List<double> aboutTextContainerGradientStopsList() => [
      0.001,
      0.0,
      0.07,
      0.5,
      0.7,
    ];

List<double> blueSplashGradientStopsList() => [
      0,
      0.2,
      0.4,
      0.5,
      0.52,
      0.95,
      1,
    ];

EdgeInsets? aboutTextContainerMargin() {
  return mainIsLandScape()
      ? null
      : const EdgeInsets.only(
          left: 8,
          right: 8,
        );
}

BorderRadius aboutTextContainerBorderRadius() => BorderRadius.only(
      bottomLeft: Radius.circular(mainShortSize(3)),
      topLeft: Radius.circular(mainShortSize(3)),
      topRight: Radius.circular(mainShortSize(3)),
    );

LinearGradient aboutTextContainerLinearGradient() {
  return LinearGradient(
    colors: aboutTextContainerGradientColorsList,
    stops: aboutTextContainerGradientStopsList(),
    transform:
        mainIsLandScape() ? null : const GradientRotation(math.pi * 90 / 180),
  );
}

EdgeInsets aboutTextColumnPadding() {
  return EdgeInsets.only(
    left: mainShortSize(3),
    right: mainShortSize(3),
    bottom: mainShortSize(3),
    top: mainShortSize(3),
  );
}
