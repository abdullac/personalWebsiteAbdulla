import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/functions.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
        color: Colors.red,
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
          color: const Color.fromARGB(255, 26, 26, 26)),
      expanded(
          specifyWidget: SpecifyWidget.image,
          isLandscape: isLandscape,
          landScapeFlex: 1,
          nonLandSapeFlex: 2,
          color: const Color.fromARGB(255, 18, 18, 18)),
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

class LabelArea extends StatelessWidget {
  const LabelArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Orientationed orientationed() => Screen.internal.orientationed;
    return ResponsiveBuilder(builder: (context, sizingInfo) {
      return Align(
        alignment: orientationed() == Orientationed.landscape
            ? Alignment.center
            : orientationed() == Orientationed.square
                ? Alignment.centerLeft
                : Alignment.center,
        child: Container(
          height: shortSize100(33),
          width: shortSize100(64),
          color: const Color.fromARGB(255, 26, 26, 26),
          padding: EdgeInsets.only(left: shortSize100(3)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                " Yes, Your Own",
                style: TextStyle(
                  letterSpacing: shortSize100(1),
                  fontSize: shortSize100(3),
                  fontWeight: FontWeight.w900,
                  color: Colors.white.withOpacity(0.3)
                ),
              ),
              Text(
                "Abdulla",
                style: TextStyle(
                    letterSpacing: shortSize100(3.2),
                    fontSize: shortSize100(10),
                    fontWeight: FontWeight.w900,
                  color: Colors.white),
              ),
               Text("Flutter Developer",
              style: TextStyle(
                letterSpacing: shortSize100(0.66),
                fontSize: shortSize100(5.7),
                fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 255, 23, 46)
                
              ),),
            ],
          ),
        ),
      );
    });
  }
}

class ImageArea extends StatelessWidget {
  const ImageArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Orientationed orientationed() => Screen.internal.orientationed;
    return ResponsiveBuilder(builder: (context, sizingInfo) {
      print(Screen.internal.sizeInfo.screenSize);
      return Align(
        alignment: orientationed() == Orientationed.landscape
            ? Alignment.bottomCenter
            : orientationed() == Orientationed.square
                ? Alignment.topRight
                : Alignment.topCenter,
        child: Container(
          height: longSize100(66),
          width: longSize100(55),
          // color: Colors.amber,
          decoration: const BoxDecoration(
            // image: DecorationImage(
            //     image: AssetImage("assets/sample_person.png"),
            //     fit: BoxFit.fitHeight),
            color: Color.fromARGB(255, 18, 18, 18),
          ),
        ),
      );
    });
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