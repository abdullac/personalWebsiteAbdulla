import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/home_page/home_page_dummy/home_page_dummy.dart';
import 'package:personalwebsite/section/home_page/home_page_dummy/home_page_real/home_page_real.dart';
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
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey[800],
        // color: Colors.black,
        child: ScreenTypeLayout(
          mobile: const TransparentInfoScreen(Devices.mobile),
          tablet: const TransparentInfoScreen(Devices.tab),
          desktop: const TransparentInfoScreen(Devices.desktop),
        ));
  }
}

class TransparentInfoScreen extends StatelessWidget {
  final Devices devices;
  const TransparentInfoScreen(
    this.devices, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizeinfo) {
      Screen(sizingInfo: sizeinfo);
      // double position = Screen(sizingInfo: sizeinfo).shortSize * 1 / 100;
      return Stack(
        children: 
        // homePageDummy() +
            [
              const HomePageReal(),
              // deviceIndeatorColor(),
            ],
      );
    });
  }

  Opacity deviceIndeatorColor() {
    return Opacity(
      opacity: 0.5,
      child: Align(
        alignment: Alignment.centerLeft,
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.play_arrow,
              color: Device.internal.isDesk == true
                  ? Colors.green
                  : Device.internal.isTab == true
                      ? Colors.blue
                      : Device.internal.isMob == true
                          ? Colors.pink
                          : Colors.yellow,
            )),
      ),
    );
  }
}