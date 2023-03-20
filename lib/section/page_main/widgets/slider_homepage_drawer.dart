import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/home_page/page_home.dart';
import 'package:personalwebsite/section/page_main/widgets/slider_menu_drawer.dart';
import 'package:personalwebsite/section/page_main/core/main_constents.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';
import 'package:personalwebsite/section/page_main/page_main.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
        return ResponsiveBuilder(
          builder: (context, sizingInfo) {
            Screen(sizingInfo: sizingInfo);
            return AnimatedContainer(
              transform: sliderHomepageDrawerTransform(newValue),
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
                    child: newValue == true ? const PageHome() : mainPageWidget,
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
