import 'package:responsive_builder/responsive_builder.dart';

enum ScreenTypes {
  landscapeMob,
  portraitMob,
  landscapeTab,
  portraitTab,
  landscapeDesk,
  portraitDesk,
  squareTab,
  squareMob,
  squareDesk,
  verySmall,
}

enum Orientationed {
  landscape,
  portrait,
  square,
}

class Screen {
  late SizingInformation sizeInfo;
  late Orientationed orientationed;
  late bool isLandscape = false;
  late bool isPortrait = false;
  late bool isSquare = false;
  // late bool isLandScape;
  // late bool isPortrait;
  // late Orientation orientation;

  static final Screen internal = Screen._internal();
  Screen._internal();

  factory Screen({required SizingInformation sizingInfo}) {
    double aRatio = sizingInfo.screenSize.aspectRatio;
    internal.sizeInfo = sizingInfo;
    aRatio > 1.3
        ? internal.orientationed = Orientationed.landscape
        : aRatio < 0.7
            ? internal.orientationed = Orientationed.portrait
            : internal.orientationed = Orientationed.square;
    // internal.isLandScape = ScrnMain.orientation == Orientation.landscape;
    // internal.isPortrait = ScrnMain.orientation == Orientation.portrait;
    // internal.orientation = ScrnMain.orientation;

    if (aRatio > 1.3) {
      internal.isLandscape = true;
      internal.isPortrait = false;
      internal.isSquare = false;
    } else if (aRatio < 0.7) {
      internal.isPortrait = true;
      internal.isLandscape = false;
      internal.isSquare = false;
    } else {
      internal.isSquare = true;
      internal.isPortrait = false;
      internal.isLandscape = false;
    }

    aRatio > 1.3
        ? internal.isLandscape = true
        : aRatio < 0.7
            ? internal.isPortrait = true
            : internal.isSquare = true;

    Dimonsion(sizingInfo: sizingInfo);
    Device(sizingInfo: sizingInfo);
    ScreenType(sizingInfo: sizingInfo);
    return internal;
  }
}

class Dimonsion {
  late SizingInformation sizeInfo;
  late double shortSize;
  late double longSize;
  late double height;
  late double width;

  static final Dimonsion internal = Dimonsion._internal();
  Dimonsion._internal();

  factory Dimonsion({required SizingInformation sizingInfo}) {
    internal.sizeInfo = sizingInfo;
    internal.shortSize = sizingInfo.screenSize.shortestSide;
    internal.longSize = sizingInfo.screenSize.longestSide;
    internal.height = sizingInfo.screenSize.height;
    internal.width = sizingInfo.screenSize.width;
    return internal;
  }
}

class Device {
  late bool isMob;
  late bool isTab;
  late bool isDesk;
  late String deviceType;

  static final Device internal = Device._internal();
  Device._internal();

  factory Device({required SizingInformation sizingInfo}) {
    internal.isMob = sizingInfo.isMobile;
    internal.isTab = sizingInfo.isTablet;
    internal.isDesk = sizingInfo.isDesktop;
    internal.deviceType = sizingInfo.deviceScreenType.name;
    return internal;
  }
}

class ScreenType {
  /// screenTypes
  late ScreenTypes screenTypes;
  /// multyScreenTypes
  late bool isLandscapeMobTab = false;
  late bool isPortraitMobTab = false;
  late bool isSquareMobTab = false;
  late bool isLandscapeTabDesk = false;
  late bool isPortraitTabDesk = false;
  late bool isSquareTabDesk = false;

  static final ScreenType internal = ScreenType._internal();
  ScreenType._internal();

  factory ScreenType({required SizingInformation sizingInfo}) {
    DeviceScreenType device = sizingInfo.deviceScreenType;
    double aRatio = sizingInfo.screenSize.aspectRatio;

    /// ScreenType
    device == DeviceScreenType.mobile
        ? aRatio > 1.3
            ? internal.screenTypes = ScreenTypes.landscapeMob
            : aRatio < 0.7
                ? internal.screenTypes = ScreenTypes.portraitMob
                : internal.screenTypes = ScreenTypes.squareMob
        : device == DeviceScreenType.tablet
            ? aRatio > 1.3
                ? internal.screenTypes = ScreenTypes.landscapeTab
                : aRatio < 0.7
                    ? internal.screenTypes = ScreenTypes.portraitTab
                    : internal.screenTypes = ScreenTypes.squareTab
            : device == DeviceScreenType.desktop
                ? aRatio > 1.3
                    ? internal.screenTypes = ScreenTypes.landscapeDesk
                    : aRatio < 0.7
                        ? internal.screenTypes = ScreenTypes.portraitDesk
                        : internal.screenTypes = ScreenTypes.squareDesk
                : internal.screenTypes = ScreenTypes.verySmall;

    /// multy screenType
    void mobTabFalse() {
      internal.isLandscapeMobTab = false;
      internal.isPortraitMobTab = false;
      internal.isSquareMobTab = false;
    }

    device == DeviceScreenType.mobile || device == DeviceScreenType.tablet
        // ? aRatio > 1.3
        ? aRatio > 1.3
            ? internal.isLandscapeMobTab = true
            // : aRatio < 0.7
            : aRatio < 0.7
                ? internal.isPortraitMobTab = true
                : internal.isSquareMobTab = true
        : mobTabFalse();

    void deskTabFalse() {
      internal.isLandscapeTabDesk = false;
      internal.isPortraitTabDesk = false;
      internal.isSquareTabDesk = false;
    }

    device == DeviceScreenType.tablet || device == DeviceScreenType.desktop
        // ? aRatio > 1.6
        ? aRatio > 1.3
            ? internal.isLandscapeTabDesk = true
            // : aRatio < 0.65
            : aRatio < 0.7
                ? internal.isPortraitTabDesk = true
                : internal.isSquareTabDesk = true
        : deskTabFalse();

    return internal;
  }
}



























//   /////////////////////////////////////////////////////////////////////
//       print("screenTypes ${ScreenType.internal.screenTypes}");
//     if (ScreenType.internal.isLandscapeMobTab) {
//       print("isLandscapeMobTab ${ScreenType.internal.isLandscapeMobTab}");
//     }else{
//       print("isLandscapeMobTab ${ScreenType.internal.isLandscapeMobTab}");

//     }

//     if (ScreenType.internal.isPortraitMobTab) {
//       print("isPortraitMobTab ${ScreenType.internal.isPortraitMobTab}");
//     }else{
//       print("isPortraitMobTab ${ScreenType.internal.isPortraitMobTab}");
      
//     }

//     if (ScreenType.internal.isSquareMobTab) {
//       print("isSquareMobTab ${ScreenType.internal.isSquareMobTab}");
//     }else{
//       print("isSquareMobTab ${ScreenType.internal.isSquareMobTab}");
      
//     }

//     if (ScreenType.internal.isLandscapeTabDesk) {
//       print("isLandscapeDeskTab ${ScreenType.internal.isLandscapeTabDesk}");
//     }else{
//       print("isLandscapeDeskTab ${ScreenType.internal.isLandscapeTabDesk}");
      
//     }

//     if (ScreenType.internal.isPortraitTabDesk) {
//       print("isPortraitDeskTab ${ScreenType.internal.isPortraitTabDesk}");
//     }else{
//       print("isPortraitDeskTab ${ScreenType.internal.isPortraitTabDesk}");
      
//     }

//     if (ScreenType.internal.isSquareTabDesk) {
//       print("isSquareDeskTab ${ScreenType.internal.isSquareTabDesk}");
//     }else{
//       print("isSquareDeskTab ${ScreenType.internal.isSquareTabDesk}");
      
//     }
// ////////////////////////////////////////////////////////////////