



import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/page_main/main_dimonsion/main_dimonsions.dart';

double portfolioDimonsion(double value){
  return mainIsDeskTop()
  ? mainWidth(value)
  : mainIsTablet()
  ? mainWidth((100*value)/66.6)
  : mainWidth((100*value)/33.3);
}