import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalwebsite/core/constents/colors.dart';
import 'package:personalwebsite/core/constents/text_sizes.dart';
import 'package:personalwebsite/core/responsive/screen.dart';

bool mainIsLandscapeMobile() {
  return mainIsMobile() && mainIsLandScape() ? true : false;
}

bool mainIsPortraitMobile() {
  return mainIsMobile() && mainIsPortrait() ? true : false;
}

bool mainIsSquareMobile() {
  return mainIsMobile() && mainIsSquare() ? true : false;
}

bool mainIsLandScape() => Screen.internal.isLandscape;
bool mainIsPortrait() => Screen.internal.isPortrait;
bool mainIsSquare() => Screen.internal.isSquare;

bool mainIsDeskTop() => Device.internal.isDesk;
bool mainIsTablet() => Device.internal.isTab;
bool mainIsMobile() => Device.internal.isMob;

double mainHeight(double height) =>
    ((Dimonsion.internal.height) * height / 100);
double mainWidth(double width) => ((Dimonsion.internal.width) * width / 100);

double mainShortSize(double size) => Dimonsion.internal.shortSize * size / 100;
double mainLongSize(double size) => Dimonsion.internal.longSize * size / 100;

Size aboutImageSize() {
  double height = !mainIsLandScape() ? mainHeight(30) : mainHeight(80);
  double width = !mainIsLandScape() ? mainWidth(100) : mainWidth(35);
  return Size(width, height);
}

Size aboutDetailSize() {
  double height = !mainIsLandScape() ? mainHeight(70) : mainHeight(80);
  double width = !mainIsLandScape() ? mainWidth(100) : mainWidth(80);
  return Size(width, height);
}

///////////////////////////////////////////// STYLES ///////
TextStyle mainHeadLineStyle() => GoogleFonts.mPlusRounded1c(
        textStyle: TextStyle(
      color: Colors.white70,
      fontSize: mainShortSize(7),
      fontWeight: FontWeight.w800,
    ));

TextStyle mainDescriptionStyle() => GoogleFonts.varelaRound(
    textStyle: TextStyle(
        fontSize: textSize2(),
        fontWeight: FontWeight.w600,
        color: kWhite80));

TextStyle mainHighlightStyle1() => GoogleFonts.varelaRound(
    textStyle: TextStyle(
        fontSize: textSize3(),
        fontWeight: FontWeight.w700,
        color: kRed));

TextStyle mainHighlightStyle2() => GoogleFonts.varelaRound(
    textStyle: TextStyle(
        fontSize: textSize3(),
        fontWeight: FontWeight.w700,
        color: kRedAccent));

TextStyle mainDescriptionDetailStyle() =>
// mainIsSquare()
//     ? GoogleFonts.varelaRound(
//             textStyle:TextStyle(
//         fontSize: mainShortSize(3.3),
//         fontWeight: FontWeight.w500,
//         color: Colors.white))
//     :
    GoogleFonts.varelaRound(
        textStyle: TextStyle(
            // fontSize: mainShortSize(3.3),
            fontSize: textSize2(),
            fontWeight: FontWeight.w500,
            color: kWhite80));

//////////////////////////////////////// String ////
