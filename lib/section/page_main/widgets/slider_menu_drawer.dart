import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/page_main/core/Widget/slider_menu_list.dart';
import 'package:personalwebsite/section/page_main/core/main_constents.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';
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
              transform: sliderMenuDrawerTransform(newValue),
              duration: const Duration(seconds: 2),
              child: SliderDrawer(
                key: sliderMenuDrawerKey,
                appBar: null,
                slideDirection: SlideDirection.LEFT_TO_RIGHT,
                slider: const MenuDrawerList(),
                sliderOpenSize: mainWidth(60),
                sliderBoxShadow: sliderMenuDrawerShadow,
                child: mainPageWidget,
              ),
            );
          },
        );
      },
    );
  }
}
