import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/home_page/home_page_real/image_area.dart';
import 'package:personalwebsite/section/home_page/home_page_real/label_area.dart';
import 'package:responsive_builder/responsive_builder.dart';

List<String> networkImageList = [
  "https://www.freepnglogos.com/uploads/html5-logo-png/html5-logo-html-logo-0.png",
  "https://www.freepnglogos.com/uploads/html5-logo-png/html5-logo-opencode-css-8.png",
  "https://www.freepnglogos.com/uploads/javascript/javascript-online-logo-for-website-0.png",
  "https://seeklogo.com/images/J/jquery-logo-CFE6ECE363-seeklogo.com.png",
 "https://seeklogo.com/images/B/bootstrap-5-logo-85A1F11F4F-seeklogo.com.png",
 "https://seeklogo.com/images/D/dart-logo-FDA1939EC4-seeklogo.com.png",
 "https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png",
 "https://seeklogo.com/images/J/java-logo-7F8B35BAB3-seeklogo.com.png",
];

List<String> imageList = [
  "assets/dio.png",
  // "assets/emoji.png",
  "assets/fluttera.png",
  "assets/freezed.png",
  "assets/injectable.png",
  "assets/json.png",
  "assets/pubspec.png",
  "assets/share.png",
  "assets/video.png",
];

enum SpecifyWidget {
  label,
  image,
}

class HomePageReal extends StatelessWidget {
  const HomePageReal({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInfo) {
      Screen(sizingInfo: sizingInfo);
      print(Screen.internal.orientationed);
      var isLandscape = Screen.internal.isLandscape == true;
      // var isSquare = Screen.internal.isLandscape == true;
      // var isPortrait = Screen.internal.isLandscape == true;

      return Container(
        color: Colors.red.withOpacity(0.0),
        child: rowOrColumn(isLandscape: isLandscape),
      );
    });
  }

  Widget rowOrColumn({required bool isLandscape}) {
    return isLandscape
        ? Row(children: childrens(isLandscape: isLandscape))
        : Column(children: childrens(isLandscape: isLandscape));
  }

  List<Widget> childrens({required bool isLandscape}) {
    return [
      expanded(
          specifyWidget: SpecifyWidget.label,
          isLandscape: isLandscape,
          landScapeFlex: 1,
          nonLandSapeFlex: 1,
          color: Colors.black.withOpacity(0.93)),
      // color: const Color.fromARGB(255, 26, 26, 26).withOpacity(0)),
      // color: const Color.fromARGB(255, 26, 26, 26).withOpacity(0.97)),
      expanded(
          specifyWidget: SpecifyWidget.image,
          isLandscape: isLandscape,
          landScapeFlex: 1,
          nonLandSapeFlex: 2,
          // color: const Color.fromARGB(255, 18, 18, 18).withOpacity(0.94),
          color: Colors.black.withOpacity(0.9)),
    ];
  }

  Expanded expanded({
    required SpecifyWidget specifyWidget,
    required bool isLandscape,
    required int landScapeFlex,
    required int nonLandSapeFlex,
    required Color color,
  }) {
    return Expanded(
        flex: isLandscape ? landScapeFlex : nonLandSapeFlex,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: color,
          child: Stack(
            children: [
              specifyWidget == SpecifyWidget.label
                  ? const LabelArea()
                  : const ImageArea(),
            ],
          ),
        ));
  }
}


//  Row(
//                 children: [
//                   Expanded(
//                       child: Center(
//                           child: Container(
//                     color: Colors.amber,
//                   ))),
//                   Expanded(
//                       child: Center(
//                           child: Container(
//                     color: Colors.greenAccent,
//                   ))),
//                 ],
//               )
//             : Screen.internal.isSquare == true
//                 ? Column(
//                     children: [
//                       Flexible(
//                           flex: 1,
//                           child: Center(
//                               child: Container(
//                             color: Colors.amber,
//                           ))),
//                       Expanded(
//                           flex: 2,
//                           child: Center(
//                               child: Container(
//                             color: Colors.greenAccent,
//                           ))),
//                     ],
//                   )
//                 : Column(
//                     children: [
//                       Expanded(
//                           child: Center(
//                               child: Container(
//                         color: Colors.amber,
//                       ))),
//                       Expanded(
//                           child: Center(
//                               child: Container(
//                         color: Colors.greenAccent,
//                       ))),
//                     ],
//                   ),