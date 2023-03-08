import 'package:personalwebsite/section/page_main/main_dimonsion/main_dimonsions.dart';

int mySkilsGridroosAxisCount() {
  return mainIsDeskTop() ? 2 : mainIsLandscapeMobile() ? 1 : 3;
}
