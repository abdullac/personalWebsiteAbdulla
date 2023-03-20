import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalwebsite/core/constents/colors.dart';
import 'package:personalwebsite/core/responsive/functions.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/home_page/core/home_constents.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LabelArea extends StatelessWidget {
  const LabelArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInfo) {
      Screen(sizingInfo: sizingInfo);
      return Align(
        alignment: homePageLabalAreaAlignment(),
        child: Container(
          height: mainShortSize(33),
          width: mainShortSize(64),
          color: kBlack26,
          padding: EdgeInsets.only(left: shortSize100(3)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: labelAreaTextWidgets,
          ),
        ),
      );
    });
  }

  List<Widget> get labelAreaTextWidgets {
    return [
      Text(
        titleWelcome,
        style: GoogleFonts.mPlusRounded1c(
            textStyle: TextStyle(
                letterSpacing: mainShortSize(1),
                fontSize: mainShortSize(3),
                fontWeight: FontWeight.w900,
                color: kGrey05)),
      ),
      Text(
        titleName,
        style: GoogleFonts.mPlusRounded1c(
            textStyle:TextStyle(
            letterSpacing: mainShortSize(3.1),
            fontSize: mainShortSize(10),
            fontWeight: FontWeight.w900,
            color: kWhite)),
      ),
      Text(
        titleplatform,
        style: GoogleFonts.mPlusRounded1c(
            textStyle:TextStyle(
            letterSpacing: mainShortSize(0.66),
            fontSize: mainShortSize(5.7),
            fontWeight: FontWeight.w600,
            color: kRedAccent)),
            // color: const Color.fromARGB(255, 255, 23, 46))),
      ),
    ];
  }
}
