import 'package:flutter/material.dart';
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
TextStyle mainHeadLineStyle() =>
// mainIsPortrait()?
    TextStyle(
      color: Colors.white70,
      fontSize: mainShortSize(10),
      fontWeight: FontWeight.w800,
    )
    // : TextStyle(
    //     fontSize: mainShortSize(10),
    //     fontWeight: FontWeight.w500,
    //   )
    ;

TextStyle mainDescriptionStyle() => TextStyle(
    fontSize: mainShortSize(3.5),
    fontWeight: FontWeight.w600,
    color: Colors.white70);

TextStyle mainHighlightStyle1() => TextStyle(
    fontSize: mainShortSize(4.5),
    fontWeight: FontWeight.w700,
    color: Colors.redAccent[100]);

TextStyle mainHighlightStyle2() => TextStyle(
    fontSize: mainShortSize(4.5),
    fontWeight: FontWeight.w700,
    color: Colors.redAccent);

TextStyle mainDescriptionDetailStyle() => mainIsSquare()
    ? TextStyle(
        fontSize: mainShortSize(3),
        fontWeight: FontWeight.w500,
        color: Colors.white)
    : TextStyle(
        fontSize: mainShortSize(4),
        fontWeight: FontWeight.w500,
        color: Colors.white);

//////////////////////////////////////// String ////
String loremipsom =
    "Devlpopy joigjdg joitrtji opirotiofjgk iitroj over 2000 yihlege in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of";

String aboutDescription = "One day, I was using a application in the computer and I thought that this is the result of the work of people like us.  And I thought I should do something that could run on a computer like that.\n\nNow, I am a developer for web, android, linux , windows, ios and mac applications. I have  developed some applications with responsiveness for mobile, tablet and desktop. I am using flutter with dart programming language which is cross-platform for building applications. Also, i have earned  a lots of technology based knowledge by creating severel interesting apps. I can build applications with user requirments and i can put my skills to their applications. I am very interested for building applications.";
