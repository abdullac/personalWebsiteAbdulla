import 'package:personalwebsite/section/page_main/main_core/main_dimonsions.dart';

int mySkilsGridcrosAxisCount() {
  return mainIsDeskTop()
      ? 2
      : mainIsLandscapeMobile()
          ? 1
          : 3;
}

double mySkilsGridItemImageHeight() {
  return mainIsDeskTop()
      ? mainHeight(35)
      : mainIsLandscapeMobile()
          ? mainHeight(50)
          : mainHeight(20);
}
