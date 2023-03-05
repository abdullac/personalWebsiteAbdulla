import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/functions.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/core/transparent_screen/functions/dimonsions.dart';
import 'package:personalwebsite/core/transparent_screen/variables/colors.dart';
import 'package:personalwebsite/core/transparent_screen/variables/gradient.dart';
import 'package:personalwebsite/core/transparent_screen/widgets/defualt_text.dart';
import 'package:personalwebsite/core/transparent_screen/widgets/transparent_screen_widget.dart';

class GradientAndShadowAssist extends StatelessWidget {
  final Color mainColor;
  final Gradient? gradient;
  final List<BoxShadow>? boxShadow;
  final BlendMode? backgroundBlendMode;
  final bool isTextVisibile;
  final List<Text>? texWidgetList;
  GradientAndShadowAssist({
    super.key,
    required this.mainColor,
    this.gradient,
    this.boxShadow,
    this.backgroundBlendMode,
    required this.isTextVisibile,
    this.texWidgetList,
  });

  Size? increseTransParentScreensize =
      TransparentScreenWidget.increseTransParentScreensizeCustom;

  @override
  Widget build(BuildContext context) {
      print("screenTypes ${ScreenType.internal.screenTypes}");
    // double padding = Screen.internal.shortSize * 5 /100;
    double padding = Dimonsion.internal.shortSize * 5 / 100;
    return Transform.translate(
      offset: const Offset(0, 0),
      child: Container(
        padding: EdgeInsets.only(
            left: padding, right: padding, top: padding, bottom: padding * 3.5),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            color: mainColor,
            gradient: gradient,
            backgroundBlendMode: backgroundBlendMode,
            boxShadow: boxShadow),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: increseTransParentScreensize != null
              ? [
                  SizedBox(
                    width: increseTransParentScreensize!.width,
                    height: increseTransParentScreensize!.height,
                  ),
                ]
              : textList(
                  isTextVisibile: isTextVisibile,
                  texWidgetList: texWidgetList,
                ),
        ),
      ),
    );
  }
}

Widget topSideShadowAsist({
  List<Text>? texWidgetList,
  Size? increseScreensize,
}) {
  return GradientAndShadowAssist(
    mainColor: black50,
    boxShadow: [
      BoxShadow(
          color: black30,
          offset: const Offset(-0.5, -0.5),
          spreadRadius: 0.0,
          blurRadius: 0.0,
          blurStyle: BlurStyle.outer),
    ],
    isTextVisibile: false,
    gradient: LinearGradient(
      colors: [black10, blueGrey50, black25],
      stops: splashStops,
      begin: Alignment.bottomRight,
      end: Alignment.topLeft,
    ),
    texWidgetList: texWidgetList,
  );
}

Widget bottomSideShadowAsist({
  List<Text>? texWidgetList,
  Size? increseScreensize,
}) {
  return GradientAndShadowAssist(
    mainColor: blueGrey90,
    boxShadow: [
      BoxShadow(
          color: blueGery300_100,
          offset: const Offset(0.2, 0.3),
          spreadRadius: 0.0,
          blurRadius: 0.0,
          blurStyle: BlurStyle.normal),
    ],
    gradient: LinearGradient(
        colors: [transparent, cyan200_50, transparent],
        stops: splashStops,
        begin: Alignment.topCenter,
        end: Alignment.center,
        transform: const GradientRotation(3)),
    isTextVisibile: false,
    texWidgetList: texWidgetList,
  );
}

Widget overCoverGradientAsist({
  List<Text>? texWidgetList,
  Size? increseScreensize,
}) {
  return GradientAndShadowAssist(
    mainColor: black50,
    gradient: LinearGradient(
      colors: [transparent, blueGrey50, transparent],
      stops: splashStops,
      begin: Alignment.bottomRight,
      end: Alignment.topLeft,
    ),
    isTextVisibile: false,
    texWidgetList: texWidgetList,
  );
}


  

