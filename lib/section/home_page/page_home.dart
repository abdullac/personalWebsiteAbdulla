import 'package:flutter/material.dart';
import 'package:personalwebsite/core/constents/colors.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/core/widgets/appbar_preferresize.dart';
import 'package:personalwebsite/section/home_page/core/widgets/goto_mainpage_button_and_gesture.dart';
import 'package:personalwebsite/section/home_page/core/widgets/home_page_real.dart';
import 'package:personalwebsite/section/home_page/core/widgets/homepage_background_small_images.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';
import 'package:personalwebsite/section/page_main/page_main.dart';
import 'package:personalwebsite/section/page_main/widgets/slider_homepage_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
    return ResponsiveBuilder(builder: (context, sizingInfo) {
      Screen(sizingInfo: sizingInfo);
      return Container(
        width: double.infinity,
        height: mainHeight(100),
        color: kBlack,
        child: const HomePageWidget(),
      );
    });
  }
}

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizeinfo) {
      Screen(sizingInfo: sizeinfo);
      return homePageStackWithGestureDetector(
        homePageStackChildrens: [
          const HomepageBackgroundSmallImages(),
          const HomePageReal(),
          const GotoMainPageButton(),
        ],
      );
    });
  }
}
