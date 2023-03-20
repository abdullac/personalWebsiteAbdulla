import 'package:flutter/material.dart';
import 'package:personalwebsite/core/constents/colors.dart';
import 'package:personalwebsite/core/constents/images.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';

Container aboutImageContainer() {
  return Container(
    width: mainIsLandScape() ? mainWidth(60) : double.infinity,
    height: mainIsLandScape() ? mainHeight(120) : mainHeight(80),
    decoration: const BoxDecoration(
      color: kTransparent,
      image: DecorationImage(
        fit: BoxFit.fitHeight,
        image: AssetImage(imageMyFace),
      ),
    ),
  );
}
