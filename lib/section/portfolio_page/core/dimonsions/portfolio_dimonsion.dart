import 'package:flutter/material.dart';
import 'package:personalwebsite/core/constents/colors.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';
import 'package:personalwebsite/section/portfolio_page/page_portfolio.dart';

double portfolioAreaHeight() {
  return mainIsLandscapeMobile()
      ? mainHeight(230)
      : mainIsTablet()
          ? mainHeight(160)
          : mainHeight(85);
}

double portfolioDimonsion(double value) {
  return mainIsDeskTop()
      ? mainWidth(value)
      : mainIsTablet() || mainIsLandscapeMobile()
          ? mainWidth((100 * value) / 66.6)
          : mainWidth((100 * value) / 33.3);
}

double portfolioSubImagesSize(double value) {
  return mainIsDeskTop()
      ? double.infinity
      : mainIsTablet() || mainIsLandscapeMobile()
          ? mainShortSize(value * 2)
          : mainShortSize(value);
}

double portfolioAdditionalImagesDimonsion(double value) {
  return mainIsDeskTop() || mainIsTablet() || mainIsLandscapeMobile()
      ? mainWidth(value)
      : mainWidth((100 * value) / 33.3);
}

BoxDecoration additionalImagesItemBorderAndDecoration(int index) {
  return BoxDecoration(
    border: Border.all(
      color: kGrey.withOpacity(
          additionalImageItemIndexNotifier.value == index ? 0.5 : 0.2),
    ),
  );
}
