import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/functions.dart';
import 'package:personalwebsite/core/responsive/screen.dart';

/// text
const String titleWelcome = " Yes, Your Own";
const String titleName = "Abdulla";
const String titleplatform = "Flutter Developer";

/// image List
const List<String> networkImageList = [
  "https://www.freepnglogos.com/uploads/html5-logo-png/html5-logo-html-logo-0.png",
  "https://www.freepnglogos.com/uploads/html5-logo-png/html5-logo-opencode-css-8.png",
  "https://www.freepnglogos.com/uploads/javascript/javascript-online-logo-for-website-0.png",
  "https://seeklogo.com/images/J/jquery-logo-CFE6ECE363-seeklogo.com.png",
  "https://seeklogo.com/images/B/bootstrap-5-logo-85A1F11F4F-seeklogo.com.png",
  "https://seeklogo.com/images/D/dart-logo-FDA1939EC4-seeklogo.com.png",
  "https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png",
  "https://seeklogo.com/images/J/java-logo-7F8B35BAB3-seeklogo.com.png",
  "https://raw.githubusercontent.com/abdullac/personalWebsiteAbdulla/main/assets/freezed.png",
  "https://raw.githubusercontent.com/abdullac/personalWebsiteAbdulla/main/assets/dio.png",
  "https://raw.githubusercontent.com/abdullac/personalWebsiteAbdulla/main/assets/json.png",
  "https://raw.githubusercontent.com/abdullac/personalWebsiteAbdulla/main/assets/zpoutnr.png",
];

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
  return (((longSize100(100) /
                  (shortSize100(100) /
                      homepageBackgroundImagesCrossAxisCount)) +
              1) *
          homepageBackgroundImagesCrossAxisCount)
      .round();
}
