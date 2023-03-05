import 'package:flutter/material.dart';
import 'package:personalwebsite/core/transparent_screen/functions/dimonsions.dart';
import 'package:personalwebsite/core/transparent_screen/variables/colors.dart';

class DefualtTextWidget extends StatelessWidget {
  final String mainTitle;
  final double fontSize;
  final Color color;
  final double letterSpace;
  final FontWeight fontWeight;
  final String textStlInput;
  final bool isTextVisibile;
  const DefualtTextWidget(
      {super.key,
      required this.mainTitle,
      required this.fontSize,
      required this.color,
      required this.letterSpace,
      required this.fontWeight,
      required this.textStlInput,
      required this.isTextVisibile});

  @override
  Widget build(BuildContext context) {
    shadowText(double opacity) => [
          BoxShadow(
              color: blackCustomOpacity(opacity),
              offset: const Offset(12, 15),
              spreadRadius: 0.0,
              blurRadius: 3,
              blurStyle: BlurStyle.normal),
        ];

    var textText = Text("Text",
        style: TextStyle(
          fontSize: fontSize,
          color: orange75,
          shadows: shadowText(0.5),
        ));
    var textOpenBrace = Text("(",
        style: TextStyle(
          fontSize: fontSize,
          color: cyanAccent400_75,
          shadows: shadowText(0.5),
        ));
    var textInvertComm = Text("\"",
        style: TextStyle(
          fontSize: fontSize,
          color: greenAccent75,
          shadows: shadowText(0.5),
        ));
    var textComm = Text(",",
        style: TextStyle(
          fontSize: fontSize,
          color: white_65,
          shadows: shadowText(0.5),
        ));
    var textStl = Text("style",
        style: TextStyle(
          fontSize: fontSize,
          color: blue100_75,
          shadows: shadowText(0.5),
        ));
    var textFullColl = Text(":",
        style: TextStyle(
          fontSize: fontSize,
          color: pinkAcent100_75,
          shadows: shadowText(0.5),
        ));

    var textStlInpt = Text(" $textStlInput",
        style: TextStyle(
          fontSize: fontSize,
          color: yellow700_75,
          shadows: shadowText(0.5),
        ));
    var textCloseBrace = Text(")",
        style: TextStyle(
          fontSize: fontSize,
          color: cyanAccent400_75,
          shadows: shadowText(0.5),
        ));

    return Opacity(
      opacity: isTextVisibile ? 1.0 : 0.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          textText,
          textOpenBrace,
          textInvertComm,
          Text(mainTitle,
              style: TextStyle(
                fontSize: textStlInput == "customeStyle"
                    ? fontSize * 0.7
                    : textStlInput == "nameStyle"
                        ? fontSize * 1.4
                        : textStlInput == "subStyle"
                            ? fontSize * 1.2
                            : fontSize,
                color: color,
                letterSpacing: letterSpace,
                fontWeight: fontWeight,
                shadows: shadowText(0.3),
              )),
          textInvertComm,
          textComm,
          textStl,
          textFullColl,
          textStlInpt,
          textCloseBrace,
          textComm,
        ],
      ),
    );
  }
}



List<Widget> textList({
  required bool isTextVisibile,
  List<Text>? texWidgetList,
}) {
 
  return texWidgetList ??
      [
        DefualtTextWidget(
            mainTitle: "Yes, Your own",
            fontSize: textSizeHome(),
            color: greenAccent,
            letterSpace: letterSpaceHome(1.07),
            fontWeight: FontWeight.w300,
            textStlInput: "customeStyle",
            isTextVisibile: isTextVisibile),
        DefualtTextWidget(
            mainTitle: "Abdulla",
            fontSize: textSizeHome(),
            color: pinkAccent,
            letterSpace: letterSpaceHome(1.77),
            fontWeight: FontWeight.w900,
            textStlInput: "nameStyle",
            isTextVisibile: isTextVisibile),
        DefualtTextWidget(
            mainTitle: "Flutter Developer ",
            fontSize: textSizeHome(),
            color: blueAccent,
            letterSpace: letterSpaceHome(-0.33),
            fontWeight: FontWeight.bold,
            textStlInput: "subStyle",
            isTextVisibile: isTextVisibile)
      ];
}

