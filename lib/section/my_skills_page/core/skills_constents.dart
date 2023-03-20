import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';

/// text List
const List<String> skillsTitleList = [
  "Dart",
  "Flutter",
  "Freezed",
  "Bloc",
  "Dio",
  "Json",
  "Java",
  "HTML",
  "CSS",
  "Java Script",
  "JQuery",
  "Boot Strap",
];

/////////  () =>  ////////
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
