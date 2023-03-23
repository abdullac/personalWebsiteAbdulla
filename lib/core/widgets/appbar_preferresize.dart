import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalwebsite/applications/appbar_bloc/appbar_bloc.dart';
import 'package:personalwebsite/applications/homepage_bloc/home_page_bloc.dart';
import 'package:personalwebsite/core/constents/appbar_constents.dart';
import 'package:personalwebsite/core/constents/colors.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/domain/home_page/goto_home.dart';
import 'package:personalwebsite/main.dart';
import 'package:personalwebsite/section/page_main/widgets/slider_menu_drawer.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';
import 'package:personalwebsite/section/page_main/page_main.dart';
import 'package:personalwebsite/section/page_main/widgets/slider_homepage_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

final appBarNotifier = ValueNotifier(false);
// Color? appBarBackgroundColor = kRedAccent;
// String appBarTitle = "Abdulla";
Widget? appBarImageCircle = appBarCircleImage();
Widget? goToLinkedInLogo = LinkedInLogo();

// PreferredSize appBarPreferredSize() {
//   return PreferredSize(
//     preferredSize: Size(mainWidth(100), mainShortSize(15)),
//     child: ResponsiveBuilder(
//       builder: (context, sizingInfo) {
//         Screen(sizingInfo: sizingInfo);
//         return ValueListenableBuilder(
//           valueListenable: appBarNotifier,
//           builder: (context, newValue, _) {
//             return AnimatedContainer(
//               transform: appbarTransform(newValue),
//               duration: const Duration(milliseconds: 400),
//               child: AppBar(
//                 shadowColor: kTransparent,
//                 backgroundColor: appBarBackgroundColor,
//                 leading: appbarLeadingWidgets(newValue),
//                 title: appbarTitleWidget(),
//                 actions: mainIsDeskTop()
//                     ? appBartextButtonList()
//                     : [
//                         appBarImageCircle ?? const SizedBox(),
//                       ],
//               ),
//             );
//           },
//         );
//       },
//     ),
//   );
// }

PreferredSize appBarPreferredSize() {
  return PreferredSize(
    preferredSize: Size(mainWidth(100), mainHeight(10)),
    //  mainShortSize(15)
    child: ResponsiveBuilder(
      builder: (context, sizingInfo) {
        Screen(sizingInfo: sizingInfo);
        return BlocBuilder<AppbarBloc, AppbarState>(
          builder: (context, state) {
            return AnimatedContainer(
              transform: appbarTransform(state.isShow),
              duration: const Duration(milliseconds: 400),
              child: AppBar(
                shadowColor: kTransparent,
                backgroundColor: state.backgoundColor,
                leadingWidth: mainIsPortrait() ? mainShortSize(7) : null,
                leading: appbarLeadingWidgets(state.isShow),
                title: appbarTitleWidget(state.title),
                actions: mainIsDeskTop()
                    ? appBartextButtonList()
                    : [
                        // imageCircle will remove when appbar is transparent.
                        goToLinkedInLogo ?? const SizedBox(),
                        appBarImageCircle ?? const SizedBox(),
                      ],
              ),
            );
          },
        );
      },
    ),
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
        : InkWell(
            onTap: () {
              appbarMenuIconPressed();
            },
            child: Icon(
              Icons.menu,
              size: mainShortSize(8),
            ),
          ),
  );
}

Widget appbarTitleWidget(String appbarTitle) {
  return Padding(
    padding: const EdgeInsets.only(right: 8),
    child:
        //  appbarTitle == "" && !mainIsDeskTop()
        //     ? SizedBox(
        //         width: mainHeight(9),
        //         height: mainHeight(9),
        //         child: Transform.scale(
        //           scaleX: -1,
        //           child: appBarCircleImage(),
        //         ),
        //       )
        //     :
        InkWell(
      onTap: () {
        BlocProvider.of<HomePageBloc>(
                NavigationService.navigatorKey.currentContext!)
            .add(const GoToHomePage());
      },
      child: Text(
        appbarTitle,
        style: GoogleFonts.dancingScript(
            textStyle: TextStyle(
                fontSize: mainShortSize(7),
                fontWeight: FontWeight.w800,
                letterSpacing: mainShortSize(0),
                shadows: appBarTitleShadow,
                color: kWhite)),
      ),
    ),
  );
}

List<Widget> appBartextButtonList() {
  List<Widget> textButtonlist = [];
  for (int index = 0; index < buttonNameList.length; index++) {
    textButtonlist.add(
      buttonNameList[index] == "LinkedIn"
          ? LinkedInLogo()
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  if (index == 0) {
                    BlocProvider.of<HomePageBloc>(
                            NavigationService.navigatorKey.currentContext!)
                        .add(const GoToHomePage());
                    // toHomePage();
                  } else {
                    PageMain.itemScrollController.scrollTo(
                        index: index,
                        duration: const Duration(milliseconds: 700));
                    PageMain.itemPositionListner.itemPositions
                        .addListener(() {});
                  }
                },
                child: Text(
                  buttonNameList[index],
                  style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(color: kRed),
                      fontSize: mainShortSize(2.2)),
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
      BlocProvider.of<HomePageBloc>(
              NavigationService.navigatorKey.currentContext!)
          .add(const GoToHomePage());
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

Widget LinkedInLogo() {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: InkWell(
      onTap: () {
        launchURL();
      },
      child: const Image(
        image: AssetImage("assets/linkedin.png"),
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
    // appBarNotifier.value = false;
    // appBarNotifier.notifyListeners();
    BlocProvider.of<AppbarBloc>(NavigationService.navigatorKey.currentContext!)
        .add(const HideToTopAppBar());
  }
}

// void appbarCircleImageOnTap() {
//   final drawerStateHomePage =
//       SliderHomePageDrawer.sliderHomePageDrawerKey.currentState;
//   if (drawerStateHomePage != null) {
//     drawerStateHomePage.isDrawerOpen
//         ? drawerStateHomePage.closeSlider()
//         : drawerStateHomePage.openSlider();
//     appBarNotifier.value = false;
//     appBarNotifier.notifyListeners();
//   }
// }

launchURL() async {
  const url = 'https://www.linkedin.com/in/abdullac';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
