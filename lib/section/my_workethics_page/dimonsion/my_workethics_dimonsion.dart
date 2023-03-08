


import 'package:personalwebsite/section/page_main/main_core/main_dimonsions.dart';

int myWorkEthicsGridCrossAxisCount(){
  return mainIsDeskTop()
  ? 3
  : mainIsTablet() 
  // || mainIsLandscapeMobile()
  ? 2
  : 1;
}


double myWorkEthicsAreaHeight(){
  return mainIsDeskTop()
  ? mainWidth(20)
  : mainIsTablet() || mainIsLandscapeMobile()
  ? mainWidth(35)
  : mainWidth(95);
}