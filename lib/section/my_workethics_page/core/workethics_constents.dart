import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';

/// text
const String workEthicHeading = "My Work Ethics";

/// text List
const List<String> workethicPointsList = [
  "Aim to make every work complete with perfect.",
  "Working longer hours with responsibility.",
  "Friendly attitude towards everyone.",
  "Tackle work with positive attitude.",
  "Ready to work with pressure.",
  "Learning new things, including to projects.",
];

//////  () =>  ///////
int myWorkEthicsGridCrossAxisCount() {
  return mainIsDeskTop()
      ? 3
      : mainIsTablet() || mainIsLandscapeMobile()
          // || mainIsLandscapeMobile()
          ? 2
          : 1;
}

double myWorkEthicsAreaHeight() {
  return mainIsDeskTop()
      ? (mainWidth(7) + mainHeight(19))
      : mainIsTablet() || mainIsLandscapeMobile()
          ? (mainWidth(16) + mainHeight(19))
          : (mainWidth(60) + mainHeight(19));
}
