import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/home_page/home_page_real/home_page_real.dart';
import 'package:personalwebsite/section/home_page/page_home.dart';
import 'package:personalwebsite/section/page_main/main_core/Widget/slider_menu_list.dart';
import 'package:personalwebsite/section/page_main/main_core/main_dimonsions.dart';
import 'package:personalwebsite/section/page_main/main_core/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

ValueNotifier<bool> appBarShowNotifier = ValueNotifier(true);

class SliderMenuDrawer extends StatelessWidget {
  final Widget mainPageWidget;
  final String appBarTitle;
  const SliderMenuDrawer({
    Key? key,
    required this.appBarTitle,
    required this.mainPageWidget,
  }) : super(key: key);

  static GlobalKey<SliderDrawerState> sliderDrawerKey =
      GlobalKey<SliderDrawerState>();

  static GlobalKey<SliderDrawerState> sliderDrawerKeyHomePage =
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
            child: mainIsDeskTop()
                ? sliderDrawer()
                : SliderDrawer(
                    key: sliderDrawerKey,
                    appBar: null,
                    slider: const MenuDrawerList(),
                    sliderOpenSize: mainWidth(60),
                    child: sliderDrawer(),
                  ),
          );
        });
      },
    );
  }

  SliderDrawer sliderDrawer() {
    return SliderDrawer(
      key: sliderDrawerKeyHomePage,
      appBar: null,
      slider: mainPageWidget,
      sliderOpenSize: mainWidth(100),
      child: const PageHome(),
    );
  }
}















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