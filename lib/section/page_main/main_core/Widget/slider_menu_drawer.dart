import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/main.dart';
import 'package:personalwebsite/section/home_page/home_page_real/home_page_real.dart';
import 'package:personalwebsite/section/home_page/page_home.dart';
import 'package:personalwebsite/section/page_main/main_core/Widget/slider_menu_list.dart';
import 'package:personalwebsite/section/page_main/main_core/main_dimonsions.dart';
import 'package:personalwebsite/section/page_main/main_core/widgets.dart';
import 'package:personalwebsite/section/page_main/page_main.dart';
import 'package:responsive_builder/responsive_builder.dart';

ValueNotifier<bool> appBarShowNotifier = ValueNotifier(true);

enum DrawerSide {
  left,
  right,
  none,
}

class SliderMenuDrawer extends StatelessWidget {
  final Widget mainPageWidget;
  const SliderMenuDrawer({
    Key? key,
    required this.mainPageWidget,
  }) : super(key: key);

  static GlobalKey<SliderDrawerState> sliderMenuDrawerKey =
      GlobalKey<SliderDrawerState>();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: appBarShowNotifier,
      builder: (context, newValue, _) {
        return ResponsiveBuilder(
          builder: (context, sizingInfo) {
            Screen(sizingInfo: sizingInfo);
            return AnimatedContainer(
              transform: Matrix4.translationValues(
                  0, newValue == true ? 0 : mainHeight(30), 0),
              duration: const Duration(seconds: 2),
              child: SliderDrawer(
                key: sliderMenuDrawerKey,
                appBar: null,
                slideDirection: SlideDirection.LEFT_TO_RIGHT,
                slider: const MenuDrawerList(),
                sliderOpenSize: mainWidth(60),
                child: mainPageWidget,
              ),
            );
          },
        );
      },
    );
  }
}

class SliderHomePageDrawer extends StatelessWidget {
  final Widget mainPageWidget;
  const SliderHomePageDrawer({
    Key? key,
    required this.mainPageWidget,
  }) : super(key: key);

  static GlobalKey<SliderDrawerState> sliderHomePageDrawerKey =
      GlobalKey<SliderDrawerState>();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: appBarShowNotifier,
      builder: (context, newValue, _) {
        return ResponsiveBuilder(builder: (context, sizingInfo) {
          Screen(sizingInfo: sizingInfo);
          return AnimatedContainer(
            transform:
                Matrix4.translationValues(0, newValue == true ? 0 : -100, 0),
            duration: const Duration(seconds: 2),
            child: ValueListenableBuilder(
                valueListenable: initialOpeningNotifier,
                builder: (context, newValue, _) {
                  return SliderDrawer(
                    key: sliderHomePageDrawerKey,
                    animationDuration: 500,
                    slideDirection: mainIsDeskTop() || mainIsLandscapeMobile()
                        ? SlideDirection.TOP_TO_BOTTOM
                        : SlideDirection.RIGHT_TO_LEFT,
                    appBar: null,
                    slider: const PageHome(),
                    sliderOpenSize: mainWidth(100),
                    child: initialOpeningNotifier.value == true
                        ? const PageHome()
                        : mainPageWidget,
                  );
                }),
          );
        });
      },
    );
  }
}




//   SliderDrawer sliderDrawer() {
//     return SliderDrawer(
//       key: sliderDrawerKeyHomePage,
//       slideDirection: SlideDirection.RIGHT_TO_LEFT,
//       sliderCloseSize: 20,
//       appBar: null,
//       slider: const PageHome(),
//       sliderOpenSize: mainLongSize(70),
//       child: mainPageWidget,
//     );
//   }
// }













            // appBar: newValue == false
            //     ? null
            //     : SliderAppBar(
            //         appBarColor: Colors.grey,
            //         title: Text(appBarTitle),
            //         trailing: ElevatedButton(
            //             onPressed: () {
            //               print(sliderDrawerKey.currentState);
            //               sliderDrawerKey.currentState?.openSlider();
            //               print(sliderDrawerKey.currentState);
            //               // appBarShowNotifier.value = false;
            //               // appBarShowNotifier.notifyListeners();
            //             },
            //             child: Text("data")),
            //       ),








//       enum DrawerSide {
//   left,
//   right,
//   none,
// }

// class SliderMenuDrawer extends StatelessWidget {
//   final Widget mainPageWidget;
//   const SliderMenuDrawer({
//     Key? key,
//     required this.mainPageWidget,
//   }) : super(key: key);

//   static GlobalKey<SliderDrawerState> sliderDrawerKey =
//       GlobalKey<SliderDrawerState>();

//   static GlobalKey<SliderDrawerState> sliderDrawerKeyHomePage =
//       GlobalKey<SliderDrawerState>();

//   @override
//   Widget build(BuildContext context) {
//     return ValueListenableBuilder(
//       valueListenable: appBarShowNotifier,
//       builder: (context, newValue, _) {
//         return ResponsiveBuilder(builder: (context, sizingInfo) {
//           Screen(sizingInfo: sizingInfo);
//           return AnimatedContainer(
//             transform: Matrix4.translationValues(
//                 0, newValue == true ? 0 : mainHeight(30), 0),
//             duration: const Duration(seconds: 2),
//             child: ValueListenableBuilder(
//                 valueListenable: MyApp.drawerSideNotifier,
//                 builder: (context, newDrawerSide, _) {
//                   return newDrawerSide == DrawerSide.left
//                       ? SliderDrawer(
//                           key: sliderDrawerKey,
//                           appBar: null,
//                           slideDirection: SlideDirection.LEFT_TO_RIGHT,
//                           slider: const MenuDrawerList(),
//                           sliderOpenSize: mainWidth(60),
//                           child: mainPageWidget,
//                         )
//                       : SliderDrawer(
//                           key: sliderDrawerKeyHomePage,
//                           appBar: null,
//                           slideDirection: SlideDirection.RIGHT_TO_LEFT,
//                           slider: const PageHome(),
//                           sliderOpenSize: mainWidth(100),
//                           child: mainPageWidget,
//                         );
//                 }),
//           );
//         });
//       },
//     );
//   }
// }