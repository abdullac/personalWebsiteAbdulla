import 'package:flutter/material.dart';
import 'package:personalwebsite/core/constents/colors.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';

Container aboutImageShadeContainer() {
  return Container(
    width: mainIsLandScape() ? mainWidth(60) : double.infinity,
    height: mainIsLandScape() ? mainHeight(120) : mainHeight(80),
    decoration: BoxDecoration(
      color: kRed,
      gradient: LinearGradient(
        begin: mainIsLandScape() ? Alignment.centerRight : Alignment.topCenter,
        end: mainIsLandScape() ? Alignment.centerLeft : Alignment.bottomCenter,
        colors: [
          kTransparent,
          kTransparent,
          Colors.black.withOpacity(0.5),
          Colors.black.withOpacity(0.7),
          Colors.black,
        ],
        stops: const [
          0.2,
          0.8,
          0.93,
          0.96,
          0.99,
        ],
      ),
    ),
  );
}
