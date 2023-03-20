import 'package:flutter/material.dart';
import 'package:personalwebsite/section/about_page/core/about_constends.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';
import 'dart:math' as math;

Container aboutTextContainer() {
  return Container(
    color: Colors.teal.withOpacity(0),
    height: mainHeight(100),
    child: Align(
      alignment: Alignment.centerRight,
      child: Column(
        mainAxisAlignment: mainIsLandScape()
            ? MainAxisAlignment.center
            : MainAxisAlignment.end,
        children: [aboutTextsPortion()],
      ),
    ),
  );
}

Widget aboutTextsPortion() {
  return Container(
    margin: aboutTextContainerMargin(),
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(1),
      borderRadius: aboutTextContainerBorderRadius(),
      gradient: aboutTextContainerLinearGradient(),
    ),
    width: aboutDetailSize().width,
    child: Stack(
      children: [
        blueSplashForAboutContainer(),
        aboutTextColumn(),
      ],
    ),
  );
}

Positioned blueSplashForAboutContainer() {
  return Positioned(
    top: 0,
    left: 0,
    child: Transform.rotate(
      angle: mainIsLandScape() ? 0 : math.pi * -90 / 180,
      alignment: Alignment.topRight,
      child: Container(
        width: 0.5,
        height: mainShortSize(60),
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: blueSplashGradientColorsList,
            stops: blueSplashGradientStopsList,
          ),
        ),
      ),
    ),
  );
}

Padding aboutTextColumn() {
  return Padding(
    padding: aboutTextColumnPadding(),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        RichText(
          textAlign: TextAlign.start,
          text: TextSpan(
            text: aboutTitle1,
            style: mainDescriptionStyle(),
            children: [
              TextSpan(
                text: aboutTitle2,
                style: mainHighlightStyle1(),
              ),
              TextSpan(
                text: aboutSubTitle1,
                style: mainDescriptionStyle(),
              ),
              TextSpan(
                text: aboutSubTitle2,
                style: mainHighlightStyle2(),
              ),
            ],
          ),
        ),
        Text(
          aboutDescription,
          textAlign: TextAlign.justify,
          style: mainDescriptionDetailStyle(),
        ),
      ],
    ),
  );
}
