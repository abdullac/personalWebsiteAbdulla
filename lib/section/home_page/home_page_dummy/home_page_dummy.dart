
import 'package:flutter/material.dart';
import 'package:personalwebsite/core/imageCode/image_code.dart';
import 'package:personalwebsite/core/responsive/functions.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/core/transparent_screen/widgets/transparent_screen_widget.dart';

List<Widget> homePageDummy() {
  return <Widget>[
    Positioned(
      bottom: Screen.internal.isPortrait == true
          ? 0
          : Screen.internal.isSquare == true
              ? 0
              : shortSize100(10),
      right: Screen.internal.isPortrait == true
          ? null
          : Screen.internal.isSquare == true
              ? longSize100(0)
              : null,
      left: Screen.internal.isPortrait == true
          ? longSize100(0)
          : Screen.internal.isSquare == true
              ? null
              : longSize100(55),
      // child: ImageCode(),
      child: Container(
        height: Screen.internal.isPortrait == true
          ?  longSize100(70)
          : Screen.internal.isSquare == true
              ? longSize100(60)
              : shortSize100(90),
        width: Screen.internal.isPortrait == true
          ?  shortSize100(100)
          : Screen.internal.isSquare == true
              ? shortSize100(60)
              : longSize100(45),
        decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/personShapeText.png"))
      ),)
    ),
    Positioned(
        top:
            // devices == Devices.mobile
            //     ?
            Screen.internal.orientationed == Orientationed.landscape
                ? shortSize100(30)
                : Screen.internal.orientationed == Orientationed.portrait
                    ? shortSize100(5)
                    : shortSize100(10),
        // : devices == Devices.tab
        //     ? ScreenType.internal.orientationed ==
        //             Orientationed.landscape
        //         ? shortSize100(30)
        //         : ScreenType.internal.orientationed ==
        //                 Orientationed.portrait
        //             ? shortSize100(5)
        //             : shortSize100(10)
        //     : devices == Devices.tab
        //         ?
        //          ScreenType.internal.orientationed ==
        //                 Orientationed.landscape
        //             ? shortSize100(30)
        //             : ScreenType.internal.orientationed ==
        //                     Orientationed.portrait
        //                 ? shortSize100(5)
        //                 : shortSize100(10)
        //         : null,
        left: Screen.internal.orientationed == Orientationed.landscape
            ? null
            : Screen.internal.orientationed == Orientationed.portrait
                ? shortSize100(0)
                : shortSize100(2),
        right: Screen.internal.orientationed == Orientationed.landscape
            ? longSize100(53)
            : Screen.internal.orientationed == Orientationed.portrait
                ? shortSize100(0)
                : null,
        child: TransparentScreenWidget()),
  ];
}
