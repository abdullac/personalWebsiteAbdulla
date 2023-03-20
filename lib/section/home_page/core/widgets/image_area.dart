import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/functions.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/home_page/core/home_constents.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ImageArea extends StatelessWidget {
  const ImageArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInfo) {
      Screen(sizingInfo: sizingInfo);
      print(Screen.internal.sizeInfo.screenSize);
      return Align(
        alignment: imageAreaAlignment(),
        child: Opacity(
          opacity: 1,
          child: Container(
            height: longSize100(66),
            width: longSize100(55),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/MyphotoBig.webp"),
                  fit: BoxFit.fitHeight),
              color: Colors.black,
            ),
          ),
        ),
      );
    });
  }

  
}
