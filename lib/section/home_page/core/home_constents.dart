import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';

/// text
const String titleWelcome = " Yes, Your Own";
const String titleName = "Abdulla";
const String titleplatform = "Flutter Developer";


const List<String> imageList = [
  "assets/dio.png",
  "assets/fluttera.png",
  "assets/freezed.png",
  "assets/injectable.png",
  "assets/json.png",
  "assets/pubspec.png",
  "assets/share.png",
  "assets/video.png",
];

//////  () =>  //////
Alignment homePageLabalAreaAlignment() {
  Orientationed orientationed() => Screen.internal.orientationed;
  return orientationed() == Orientationed.landscape
      ? Alignment.center
      : orientationed() == Orientationed.square
          ? Alignment.centerLeft
          : Alignment.center;
}

Alignment imageAreaAlignment() {
  Orientationed orientationed() => Screen.internal.orientationed;
  return orientationed() == Orientationed.landscape
      ? Alignment.bottomCenter
      : orientationed() == Orientationed.square
          ? Alignment.topRight
          : Alignment.topCenter;
}

int homepageBackgroundImagesCrossAxisCount = Screen.internal.isPortrait
    ? 6
    : Screen.internal.isSquare
        ? 9
        : 12;

int homepageBackgroundImagesItemCount() {
  return (((mainLongSize(100) /
                  (mainShortSize(100) /
                      homepageBackgroundImagesCrossAxisCount)) +
              1) *
          homepageBackgroundImagesCrossAxisCount)
      .round();
}
