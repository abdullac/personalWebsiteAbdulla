import 'package:flutter/material.dart';
import 'package:personalwebsite/core/constents/colors.dart';
import 'package:personalwebsite/core/widgets/appbar_preferresize.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';
import 'dart:math' as math;

import 'package:personalwebsite/section/page_main/page_main.dart';
import 'package:personalwebsite/section/page_main/widgets/slider_homepage_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class GotoMainPageButton extends StatelessWidget {
  const GotoMainPageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ResponsiveBuilder(
        builder: (context,sizingInfo) {
          return IconButton(
            onPressed: () {
              homePageToMainpage();
            },
            color: kGrey05,
            iconSize: mainShortSize(10),
            icon: Transform.rotate(
              angle: math.pi * 180 / 360,
              child: const Icon(Icons.double_arrow_rounded),
            ),
          );
        }
      ),
    );
  }
}


  Widget homePageStackWithGestureDetector(
      {required List<Widget> homePageStackChildrens}) {
    return GestureDetector(
      onVerticalDragUpdate: (details) => homePageToMainpage(),
      onHorizontalDragUpdate: (details) => homePageToMainpage(),
      onTap: () => homePageToMainpage(),
      child: Stack(
        children: homePageStackChildrens,
      ),
    );
  }


homePageToMainpage() {
  initialOpeningNotifier.value = false;
  final drawerStateHomePage =
      SliderHomePageDrawer.sliderHomePageDrawerKey.currentState;
  if (drawerStateHomePage != null) {
    drawerStateHomePage.isDrawerOpen ? drawerStateHomePage.closeSlider() : null;
    appBarNotifier.value = true;
    appBarImageCircle = null;
    appBarTitle = "";
    appBarBackgroundColor = kTransparent;
    appBarNotifier.notifyListeners();
  }
}
