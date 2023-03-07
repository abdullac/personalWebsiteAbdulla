import 'package:personalwebsite/core/responsive/screen.dart';

// double buttonSize() => deviceType() == "desktop"
//     ? shortSize() * 25 / 100
//     : deviceType() == "tablet"
//         ? shortSize() * 60 / 100
//         : shortSize() * 77 / 100;













double tshortSize100(double size) => Dimonsion.internal.shortSize * size / 100;

double buttonSize([double? size]) =>
    Screen.internal.orientationed == Orientationed.landscape
        ? tshortSize100(20*(size??1))
        : Screen.internal.orientationed == Orientationed.portrait
            ? tshortSize100(20*(size??1))
            : tshortSize100(20*(size??1));

double textSizeHome([double? sizeOfText]) {
  Orientationed orientationed = Screen.internal.orientationed;
  return orientationed == Orientationed.landscape
      ? tshortSize100(sizeOfText ?? 3)
      : orientationed == Orientationed.portrait
          ? tshortSize100(sizeOfText ?? 4)
          : tshortSize100(sizeOfText ?? 3);
}

double letterSpaceHome([double? letterSpace]) {
  letterSpace = letterSpace ?? 0.0;
  Orientationed orientationed = Screen.internal.orientationed;
  return orientationed == Orientationed.landscape
      ? tshortSize100(letterSpace * 0.75)
      : orientationed == Orientationed.portrait
          ? tshortSize100(letterSpace * 1)
          : tshortSize100(letterSpace * 0.76);
}
