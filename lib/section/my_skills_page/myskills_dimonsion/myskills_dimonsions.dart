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
      ? mainHeight(25)
      : mainIsLandscapeMobile()
          ? mainHeight(45)
          : mainHeight(17);
}
