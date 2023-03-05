import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/functions.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
        child: Opacity(
          opacity: 1,
          child: Container(
            height: longSize100(66),
            width: longSize100(55),
            // color: Colors.amber,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/sample_person.png"),
                  fit: BoxFit.fitHeight),
              color: Color.fromARGB(255, 18, 18, 18),
            ),
          ),
        ),
      );
    });
  }
}

