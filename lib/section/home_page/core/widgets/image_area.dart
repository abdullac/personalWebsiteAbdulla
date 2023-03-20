import 'package:flutter/material.dart';
import 'package:personalwebsite/core/constents/colors.dart';
import 'package:personalwebsite/core/constents/images.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/home_page/core/home_constents.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ImageArea extends StatelessWidget {
  const ImageArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInfo) {
      Screen(sizingInfo: sizingInfo);
      return Align(
        alignment: imageAreaAlignment(),
        child: Opacity(
          opacity: 1,
          child: Container(
            height: mainLongSize(66),
            width: mainLongSize(55),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageMyHalfSize),
                fit: BoxFit.fitHeight,
              ),
              color: kBlack,
            ),
          ),
        ),
      );
    });
  }
}
