import 'dart:math';

import 'package:flutter/material.dart';

/// text
const String portfolioHeading = "My Works";

/// image
const String netflipzTitleImage = "assets/Netflipz.png";

/// image  List
const List<String> portfolioImageList = [
  "assets/netflipzhome.webp",
  "assets/netflipzcomingsoon.webp",
  "assets/netflipzeveryoneswathing.webp",
  "assets/netflipzfastluaghs.webp",
  "assets/netflipztopsearches.webp",
  "assets/netflipzsearchresults.webp",
  "assets/netflipsdownloads.webp",
  "assets/Netflipz.png",
];

const List<String> portfolioMobileImageList = [
  "assets/netflipzmobilehome.webp",
  "assets/netflipzmobilecomingsoon.webp",
  "assets/netflipzmobileeveryoneswatching.webp",
  "assets/netflipzmobilefastluaghs.webp",
  "assets/netflipzmobiletopsearches.webp",
  "assets/netflipzmobilesearchresults.webp",
  "assets/netflipzmobiledownloads.webp",
  "assets/netFlipzLogoA.webp",
];

const List<String> portfolioTabImageList = [
  "assets/netflipztabhome.webp",
  "assets/netflipztabcomingsoon.webp",
  "assets/netflipztabeveryoneswatching.webp",
  "assets/netflipztabfastluaghs.webp",
  "assets/netflipztabtopsearches.webp",
  "assets/netflipztabsearchresults.webp",
  "assets/netflipztabdownloads.webp",
  "assets/netFlipzLogoA.webp",
];

const List<String> portfolioAdditionalImageList = [
  "assets/appbar1.webp",
  "assets/bottomnavigationbar1.webp",
  "assets/imagecards.webp",
  "assets/searchfield.webp",
];

/// text List
const List<String> portfolioTextList = [
  "The wonderful Home page of Netflipz",
  "This pageshows Coming soon items",
  "Everyone's wathing items List here",
  "You can watch Netflipz users Short video",
  "Top search items short here",
  "You can search here, Which item you wanted",
  "This is downloads page",
  "Netflipz simple logo",
];

const List<String> portfolioAdditionalTextList = [
  "Transparent Animated Hide and show App Bar",
  "Three types of visibilty in Bottom Navigation Bar",
  "Image cards and Number Image cards",
  "Defferent views of Search field",
];

/// shadow

List<BoxShadow> portfolioSubimagesDesktopShadow = [
  BoxShadow(
    color: Colors.grey.withOpacity(0.2),
    offset: const Offset(0.5, 0.5),
    blurRadius: 0.5,
    spreadRadius: 0.5,
  ),
  BoxShadow(
    color: Colors.grey.withOpacity(0.6),
    offset: const Offset(-0.4, -0.4),
    blurRadius: 0.5,
    spreadRadius: 0.5,
  ),
];

List<BoxShadow> portfolioSubimagesTabletShadow = [
  BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    offset: const Offset(0.5, 0.5),
    blurRadius: 0.5,
    spreadRadius: 0.5,
  ),
  BoxShadow(
    color: Colors.red.withOpacity(0.7),
    offset: const Offset(-0.5, -0.5),
    blurRadius: 0.5,
    spreadRadius: 0.3,
  ),
];
List<BoxShadow> portfolioSubimagesMobileShadow = [
  BoxShadow(
    color: Colors.grey.withOpacity(0.4),
    offset: const Offset(0.5, 0.5),
    blurRadius: 0.5,
    spreadRadius: 0.5,
  ),
  BoxShadow(
    color: Colors.green.withOpacity(0.6),
    offset: const Offset(-0.5, -0.5),
    blurRadius: 0.5,
    spreadRadius: 0.1,
  ),
];

//////  () =>  //////
Matrix4 portfolioSubDesktopViewTransform(int newsubImageIndex) {
  return Matrix4.translationValues(
    newsubImageIndex % 2 == 0
        ? Random().nextDouble() * -30
        : Random().nextDouble() * 30,
    0,
    0,
  );
}

Matrix4 portfolioSubTabletViewTransform(int newsubImageIndex) =>
    Matrix4.translationValues(
      0,
      newsubImageIndex % 2 == 0 ? -10 : 0,
      0,
    );

Matrix4 portfolioSubMobileViewTransform(int newsubImageIndex) =>
    Matrix4.translationValues(
      0,
      newsubImageIndex % 2 == 0 ? -10 : 0,
      0,
    );
