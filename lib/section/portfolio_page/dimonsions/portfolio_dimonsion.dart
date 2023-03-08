import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/page_main/main_core/main_dimonsions.dart';

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

  //  mainIsPortraitMobile() || mainIsTablet() || mainIsSquareMobile()
  //     ? mainShortSize(value * 2)
  //     : mainIsMobile()
  //         ? mainShortSize(value)
  //         : double.infinity;
}

double portfolioAdditionalImagesDimonsion(double value) {
  return mainIsDeskTop() || mainIsTablet() || mainIsLandscapeMobile()
      ? mainWidth(value)
      : mainWidth((100 * value) / 33.3);
}
