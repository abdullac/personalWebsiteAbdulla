


import 'package:personalwebsite/section/page_main/main_core/main_dimonsions.dart';

int myWorkEthicsGridCrossAxisCount(){
  return mainIsDeskTop()
  ? 3
  : mainIsTablet() || mainIsLandscapeMobile()
  // || mainIsLandscapeMobile()
  ? 2
  : 1;
}


double myWorkEthicsAreaHeight(){
  return mainIsDeskTop()
  ? (mainWidth(7)+mainHeight(19))
  : mainIsTablet() || mainIsLandscapeMobile()
  ? (mainWidth(16)+mainHeight(19))
  : (mainWidth(60)+mainHeight(19));
}