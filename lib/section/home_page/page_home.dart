import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/functions.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/main.dart';
import 'package:personalwebsite/section/home_page/home_page_dummy/home_page_dummy.dart';
import 'package:personalwebsite/section/home_page/home_page_real/home_page_real.dart';
import 'package:personalwebsite/section/home_page/home_page_gridview/homepage_gridview.dart';
import 'package:personalwebsite/section/page_main/main_core/Widget/slider_menu_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'dart:math' as math;

enum Devices {
  mobile,
  tab,
  desktop,
}

class PageHome extends StatelessWidget {
  const PageHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey[800],
        // color: Colors.black,
        child: ScreenTypeLayout(
          mobile: const TransparentInfoScreen(Devices.mobile),
          tablet: const TransparentInfoScreen(Devices.tab),
          desktop: const TransparentInfoScreen(Devices.desktop),
        ));
  }
}

class TransparentInfoScreen extends StatelessWidget {
  final Devices devices;
  const TransparentInfoScreen(
    this.devices, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizeinfo) {
      Screen(sizingInfo: sizeinfo);
      // double position = Screen(sizingInfo: sizeinfo).shortSize * 1 / 100;
      return GestureDetector(
        onVerticalDragUpdate: (details) => homePageToMainpage(),
        onHorizontalDragUpdate: (details) => homePageToMainpage(),
        onTap: () => homePageToMainpage(),
        child: Stack(
          children:
              // homePageDummy() +
              [
            const HomepageGridview(),
            const HomePageReal(),
            Align(
              alignment: Alignment.bottomCenter,
              child: IconButton(
                onPressed: () {
                  //
                },
                color: Colors.white.withOpacity(0.2),
                hoverColor: Colors.red,
                highlightColor: Colors.blue,
                focusColor: Colors.amber,
                splashColor: Colors.green,
                iconSize: shortSize100(10),
                icon: Transform.rotate(
                  angle: math.pi * 180 / 360,
                  child: InkWell(
                      onTap: () => homePageToMainpage(),
                      child: const Icon(Icons.double_arrow_rounded)),
                ),
              ),
            ),
            // deviceIndeatorColor(),
          ],
        ),
      );
    });
  }

  Opacity deviceIndeatorColor() {
    return Opacity(
      opacity: 0.5,
      child: Align(
        alignment: Alignment.centerLeft,
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.play_arrow,
              color: Device.internal.isDesk == true
                  ? Colors.green
                  : Device.internal.isTab == true
                      ? Colors.blue
                      : Device.internal.isMob == true
                          ? Colors.pink
                          : Colors.yellow,
            )),
      ),
    );
  }
}

homePageToMainpage() {
  final drawerStateHomePage =
      SliderMenuDrawer.sliderDrawerKeyHomePage.currentState;
  if (drawerStateHomePage != null) {
    drawerStateHomePage.isDrawerOpen
        // ? drawerStateHomePage.closeSlider()
        ? null
        : drawerStateHomePage.openSlider();
    // :null;
    MyApp.appBarNotifier.value = true;
    MyApp.appBarImageCircle = null;
    MyApp.appBarTitle = "";
    MyApp.appBarBackgroundColor = Colors.redAccent.withOpacity(0);
    MyApp.appBarNotifier.notifyListeners();
  }
}

toHomePage() {
  final drawerStateHomePage =
      SliderMenuDrawer.sliderDrawerKeyHomePage.currentState;
  final drawerState = SliderMenuDrawer.sliderDrawerKey.currentState;
  if (drawerStateHomePage != null && drawerState != null) {
    if (drawerStateHomePage.isDrawerOpen) {
      drawerStateHomePage.closeSlider();
      drawerState.closeSlider();
    }
    MyApp.appBarNotifier.value = false;
    MyApp.appBarNotifier.notifyListeners();
  }
}
