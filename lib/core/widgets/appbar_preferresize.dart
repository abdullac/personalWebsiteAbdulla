import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalwebsite/core/constents/appbar_constents.dart';
import 'package:personalwebsite/core/constents/colors.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/page_main/widgets/slider_menu_drawer.dart';
import 'package:personalwebsite/section/page_main/core/Widget/slider_menu_list.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';
import 'package:personalwebsite/section/page_main/page_main.dart';
import 'package:personalwebsite/section/page_main/widgets/slider_homepage_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

final appBarNotifier = ValueNotifier(false);
Color? appBarBackgroundColor = kRedAccent;
String appBarTitle = "Abdulla";
Widget? appBarImageCircle = appBarCircleImage();

PreferredSize appBarPreferredSize() {
  return PreferredSize(
    preferredSize: Size(mainWidth(100), mainShortSize(15)),
    child: ResponsiveBuilder(builder: (context, sizingInfo) {
      Screen(sizingInfo: sizingInfo);
      return ValueListenableBuilder(
        valueListenable: appBarNotifier,
        builder: (context, newValue, _) {
          return AnimatedContainer(
            transform: appbarTransform(newValue),
            duration: const Duration(milliseconds: 400),
            child: AppBar(
              shadowColor: kTransparent,
              backgroundColor: appBarBackgroundColor,
              leading: appbarLeadingWidgets(newValue),
              title: appbarTitleWidget(),
              actions: mainIsDeskTop()
                  ? appBartextButtonList()
                  : [
                      appBarImageCircle ?? const SizedBox(),
                    ],
            ),
          );
        },
      );
    }),
  );
}

AnimatedContainer appbarLeadingWidgets(bool newValue) {
  return AnimatedContainer(
    transform: appbarMenuIconTransform(newValue),
    duration: const Duration(milliseconds: 300),
    child: mainIsDeskTop()
        ? Transform.scale(
            scaleX: -1,
            child: appBarCircleImage(),
          )
        : IconButton(
            onPressed: () {
              appbarMenuIconPressed();
            },
            icon: Icon(
              Icons.menu,
              size: mainShortSize(8),
            ),
          ),
  );
}

Widget appbarTitleWidget() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      appBarTitle,
      style: GoogleFonts.dancingScript(
          textStyle: TextStyle(
              fontSize: mainShortSize(7),
              fontWeight: FontWeight.w800,
              letterSpacing: mainShortSize(0),
              shadows: appBarTitleShadow,
              color: kWhite)),
    ),
  );
}

List<Widget> appBartextButtonList() {
  List<Widget> textButtonlist = [];
  for (int index = 0; index < buttonNameList.length; index++) {
    textButtonlist.add(
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          onPressed: () {
            if (index == 0) {
              toHomePage();
            } else {
              PageMain.itemScrollController.scrollTo(
                  index: index, duration: const Duration(milliseconds: 700));
              PageMain.itemPositionListner.itemPositions.addListener(() {});
            }
          },
          child: Text(
            buttonNameList[index],
            style:GoogleFonts.varelaRound(textStyle: TextStyle(color: kRed), 
            fontSize: mainShortSize(2.2)) ,
          ),
        ),
      ),
    );
  }
  return textButtonlist;
}

InkWell appBarCircleImage() {
  return InkWell(
    onTap: () {
      appbarCircleImageOnTap();
    },
    hoverColor: kBlack26,
    borderRadius: BorderRadius.all(Radius.circular(mainShortSize(15))),
    child: Center(
      child: Container(
        height: mainShortSize(12),
        width: mainShortSize(12),
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: kBlack26,
                offset: Offset(1.5, 1.5),
                blurRadius: 1,
                spreadRadius: 0.5)
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(
              mainShortSize(18),
            ),
          ),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/myPhotoFace.webp"),
          ),
        ),
      ),
    ),
  );
}

void appbarMenuIconPressed() {
  final drawerState = SliderMenuDrawer.sliderMenuDrawerKey.currentState;
  if (drawerState != null) {
    drawerState.isDrawerOpen
        ? drawerState.closeSlider()
        : drawerState.openSlider();
    appBarNotifier.value = false;
    appBarNotifier.notifyListeners();
  }
}

void appbarCircleImageOnTap() {
  final drawerStateHomePage =
      SliderHomePageDrawer.sliderHomePageDrawerKey.currentState;
  if (drawerStateHomePage != null) {
    drawerStateHomePage.isDrawerOpen
        ? drawerStateHomePage.closeSlider()
        : drawerStateHomePage.openSlider();
    appBarNotifier.value = false;
    appBarNotifier.notifyListeners();
  }
}
