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
              preferredSize: Size(mainWidth(100), mainShortSize(10)),
              child: ValueListenableBuilder(
                valueListenable: appBarNotifier,
                builder: (context, newValue, _) {
                  return AnimatedContainer(
                    transform: Matrix4.translationValues(
                        0, newValue == false ? -100 : 0, 0),
                    duration: const Duration(milliseconds: 800),
                    child: AppBar(
                      backgroundColor: Colors.black12,
                      leading: AnimatedContainer(
                        transform: Matrix4.translationValues(
                          newValue == false ? -100 : 0,
                          newValue == false ? 35 : 0,
                          0,
                        ),
                        duration: const Duration(milliseconds: 300),
                        child: IconButton(
                            onPressed: () {
                              final drawerState =
                                  SliderMenuDrawer.sliderDrawerKey.currentState;
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
                        child: Text("Abdulla",style: TextStyle(fontSize: mainShortSize(5)),),
                      ),
                      actions: [
                        InkWell(
                          onTap: () {
                            final drawerStateHomePage =
                                  SliderMenuDrawer.sliderDrawerKeyHomePage.currentState;
                              if (drawerStateHomePage != null) {
                                drawerStateHomePage.isDrawerOpen
                                    ? drawerStateHomePage.closeSlider()
                                    // : drawerStateHomePage.openSlider();
                                    :null;
                                appBarNotifier.value = false;
                                appBarNotifier.notifyListeners();
                              }
                          },
                          child: Container(
                            height: mainShortSize(8),
                            width: mainShortSize(8),
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(
                                  mainShortSize(8),
                                )),
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/abdulla_photo35.png"))),
                          ),
                        )
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
}

class MyScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.mouse,
        PointerDeviceKind.touch,
      };
}
