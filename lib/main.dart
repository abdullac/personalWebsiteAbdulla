import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/scrn_main/scrn_main.dart';
import 'package:personalwebsite/section/home_page/page_home.dart';
import 'package:personalwebsite/section/page_main/main_core/main_dimonsions.dart';
import 'package:personalwebsite/section/page_main/main_core/widgets.dart';
import 'package:personalwebsite/section/page_main/page_main.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'section/page_main/main_core/Widget/slider_menu_drawer.dart';

// enum AppBarStatus {
//   hideAppBar,
//   hideMenuIcon,
//   none,
// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // static final menuIconNotifier = ValueNotifier(true);
  static final appBarNotifier = ValueNotifier(false);
  static Color? appBarBackgroundColor = Colors.redAccent[700];
  static String appBarTitle = "Abdulla";
  static Widget? appBarImageCircle = appBarCircleImage();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyScrollBehavior(),
      theme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: ResponsiveBuilder(builder: (context, sizingInfo) {
        Screen(sizingInfo: sizingInfo);
        return SafeArea(
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size(mainWidth(100), mainShortSize(15)),
              child: ValueListenableBuilder(
                valueListenable: appBarNotifier,
                builder: (context, newValue, _) {
                  return AnimatedContainer(
                    transform: Matrix4.translationValues(
                        0, newValue == false ? -100 : 0, 0),
                    duration: const Duration(milliseconds: 400),
                    child: AppBar(
                      backgroundColor: appBarBackgroundColor,
                      leading: AnimatedContainer(
                        transform: Matrix4.translationValues(
                          newValue == false ? -100 : 0,
                          newValue == false ? 50 : 0,
                          0,
                        ),
                        duration: const Duration(milliseconds: 300),
                        child: mainIsDeskTop()
                            ? Transform.scale(
                                scaleX: -1,
                                child: appBarCircleImage(),
                              )
                            : IconButton(
                                onPressed: () {
                                  final drawerState = SliderMenuDrawer
                                      .sliderMenuDrawerKey.currentState;
                                  if (drawerState != null) {
                                    drawerState.isDrawerOpen
                                        ? drawerState.closeSlider()
                                        : drawerState.openSlider();
                                    appBarNotifier.value = false;
                                    appBarNotifier.notifyListeners();
                                  }
                                },
                                icon: Icon(
                                  Icons.menu,
                                  size: mainShortSize(8),
                                )),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          appBarTitle,
                          style: TextStyle(fontSize: mainShortSize(5)),
                        ),
                      ),
                      actions: mainIsDeskTop()
                          ? appBartextButtonList()
                          : [
                              appBarImageCircle ?? const SizedBox(),
                            ],
                    ),
                  );
                },
              ),
            ),
            extendBodyBehindAppBar: true,
            body: PageMain(),
            // body: PageHome(),
          ),
        );
      }),
    );
  }

  List<Widget> appBartextButtonList() {
    List<Widget> textButtonlist = [];
    List<String> buttonNameList = [
      "Home",
      "About",
      "Portfolio",
      "Skills",
      "Work Ethics",
      "Contact",
    ];
    for (int index = 0; index < buttonNameList.length; index++) {
      textButtonlist.add(
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            onPressed: () {
              PageMain.itemScrollController.scrollTo(
                  index: index, duration: const Duration(milliseconds: 700));
              PageMain.itemPositionListner.itemPositions.addListener(() {});
            },
            child: Text(
              buttonNameList[index],
              style: TextStyle(color: Colors.red[300]),
            ),
          ),
        ),
      );
    }
    return textButtonlist;
  }

  static InkWell appBarCircleImage() {
    return InkWell(
      onTap: () {
        final drawerStateHomePage =
            SliderHomePageDrawer.sliderHomePageDrawerKey.currentState;
        if (drawerStateHomePage != null) {
          drawerStateHomePage.isDrawerOpen
              ? drawerStateHomePage.closeSlider()
              : drawerStateHomePage.openSlider();
          // : null;
          appBarNotifier.value = false;
          appBarNotifier.notifyListeners();
        }
      },
      hoverColor: Colors.black12,
      borderRadius: BorderRadius.all(Radius.circular(mainShortSize(15))),
      child: Center(
        child: Container(
          height: mainShortSize(12),
          width: mainShortSize(12),
          margin: const EdgeInsets.all(2),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    offset: const Offset(1.5, 1.5),
                    blurRadius: 1,
                    spreadRadius: 0.5)
              ],
              borderRadius: BorderRadius.all(Radius.circular(
                mainShortSize(18),
              )),
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/myPhotoFace.webp"))),
        ),
      ),
    );
  }
}

class MyScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.mouse,
        PointerDeviceKind.touch,
      };
}
