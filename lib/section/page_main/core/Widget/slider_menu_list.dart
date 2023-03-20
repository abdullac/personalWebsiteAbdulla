import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/core/widgets/appbar_preferresize.dart';
import 'package:personalwebsite/section/page_main/core/Widget/image_avatar_and_name.dart';
import 'package:personalwebsite/section/page_main/core/Widget/sectiontile_gridview.dart';
import 'package:personalwebsite/section/page_main/widgets/slider_menu_drawer.dart';
import 'package:personalwebsite/section/page_main/core/main_constents.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';
import 'package:personalwebsite/section/page_main/widgets/slider_homepage_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MenuDrawerList extends StatelessWidget {
  const MenuDrawerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: sliderMenuListBackgroundDecoration,
      child: ResponsiveBuilder(builder: (context, sizingInfo) {
        Screen(sizingInfo: sizingInfo);
        return Transform.translate(
          offset: Offset(0, -mainShortSize(10)),
          child: ListView.separated(
            scrollDirection:
                mainIsLandscapeMobile() ? Axis.horizontal : Axis.vertical,
            itemBuilder: (context, index) {
              return menuDrawerPortions()[index];
            },
            separatorBuilder: redLineSeperator,
            itemCount: 2,
          ),
        );
      }),
    );
  }

  Widget redLineSeperator(context, index) => Container(
        height: 0.5,
        width: 0.5,
        color: Colors.redAccent.withOpacity(0.3),
      );

  List<Widget> menuDrawerPortions() {
    return [
      imageAvatarAndName(),
      setionTilesGridView(),
    ];
  }
}

toHomePage() {
  final menuDrawerState = SliderMenuDrawer.sliderMenuDrawerKey.currentState;
  final homePageDrawerState =
      SliderHomePageDrawer.sliderHomePageDrawerKey.currentState;
  if (menuDrawerState != null && homePageDrawerState != null) {
    menuDrawerState.closeSlider();
    homePageDrawerState.openSlider();
    appBarNotifier.value = false;
    appBarNotifier.notifyListeners();
  }
}
