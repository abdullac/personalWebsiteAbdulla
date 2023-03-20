import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';

/// image List
const List<String> networkImageList = [
  "https://seeklogo.com/images/D/dart-logo-FDA1939EC4-seeklogo.com.png",
  "https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png",
  "https://raw.githubusercontent.com/abdullac/personalWebsiteAbdulla/main/assets/freezed.png",
  "https://raw.githubusercontent.com/abdullac/personalWebsiteAbdulla/main/assets/zpoutnr.png",
  "https://raw.githubusercontent.com/abdullac/personalWebsiteAbdulla/main/assets/dio.png",
  "https://raw.githubusercontent.com/abdullac/personalWebsiteAbdulla/main/assets/json.png",
  "https://seeklogo.com/images/J/java-logo-7F8B35BAB3-seeklogo.com.png",
  "https://www.freepnglogos.com/uploads/html5-logo-png/html5-logo-html-logo-0.png",
  "https://www.freepnglogos.com/uploads/html5-logo-png/html5-logo-opencode-css-8.png",
  "https://www.freepnglogos.com/uploads/javascript/javascript-online-logo-for-website-0.png",
  "https://seeklogo.com/images/J/jquery-logo-CFE6ECE363-seeklogo.com.png",
  "https://seeklogo.com/images/B/bootstrap-5-logo-85A1F11F4F-seeklogo.com.png",
];

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
