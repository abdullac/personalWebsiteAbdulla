import 'package:personalwebsite/core/responsive/screen.dart';

double shortSize100(double size) => Dimonsion.internal.shortSize * size / 100;
double longSize100(double size) => Dimonsion.internal.longSize * size / 100;

double shortSize() => Dimonsion.internal.shortSize;

String deviceType() => Device.internal.deviceType;

// double textSize([double? sizeOfText]) {
//   return (shortSize() * (sizeOfText ?? 10) / 100);
// }






// double textSize() => deviceType() == "desktop"
//     ? shortSize() * 2.7 / 100
//     : deviceType() == "tablet"
//         ? shortSize() * 3.3 / 100
//         : shortSize() * 4 / 100;

// double textSize([double? sizeOfText]) {
//   ScreenTypes screenTypes = ScreenType.internal.screenTypes;
//   return screenTypes == ScreenTypes.landscapeDesk
//       ? (shortSize() * (sizeOfText ?? 3) / 100)
//       : screenTypes == ScreenTypes.landscapeTab
//           ? (shortSize() * (sizeOfText ?? 3) / 100)
//           : screenTypes == ScreenTypes.landscapeMob
//               ? (shortSize() * (sizeOfText ?? 3.0) / 100)
//               : screenTypes == ScreenTypes.portraitDesk
//                   ? (shortSize() * (sizeOfText ?? 4.0) / 100)
//                   : screenTypes == ScreenTypes.portraitTab
//                       ? (shortSize() * (sizeOfText ?? 4.0) / 100)
//                       : screenTypes == ScreenTypes.portraitMob
//                           ? (shortSize() * (sizeOfText ?? 4.0) / 100)
//                           : (shortSize() * (sizeOfText ?? 1.0) / 100);
// }
