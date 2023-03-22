import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';


double textSize3() {
  if (Device.internal.isMob && Screen.internal.isPortrait ||
      Device.internal.isMob && Screen.internal.isLandscape) {
    return mainShortSize(4.9);
  } else {
    return mainShortSize(4.5);
  }
}



double textSize2() {
  if (Device.internal.isMob && Screen.internal.isPortrait ||
      Device.internal.isMob && Screen.internal.isLandscape) {
    return mainShortSize(3.9);
  } else {
    return mainShortSize(3.3);
  }
}


double textSize1() {
  if (mainIsMobile() && mainIsPortrait() ||
      mainIsMobile() && mainIsLandScape()) {
    return mainShortSize(4);
  }else if(mainIsDeskTop()){
    return mainShortSize(1.8);
  } else {
    return mainShortSize(2.5);
  }
}
