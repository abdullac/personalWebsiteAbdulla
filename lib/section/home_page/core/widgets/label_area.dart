import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/functions.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/home_page/core/home_constents.dart';
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
          height: shortSize100(33),
          width: shortSize100(64),
          color: const Color.fromARGB(255, 26, 26, 26).withOpacity(0.1),
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
        style: TextStyle(
            letterSpacing: shortSize100(1),
            fontSize: shortSize100(3),
            fontWeight: FontWeight.w900,
            color: Colors.white.withOpacity(0.3)),
      ),
      Text(
        titleName,
        style: TextStyle(
            letterSpacing: shortSize100(3.2),
            fontSize: shortSize100(10),
            fontWeight: FontWeight.w900,
            color: Colors.white),
      ),
      Text(
        titleplatform,
        style: TextStyle(
            letterSpacing: shortSize100(0.66),
            fontSize: shortSize100(5.7),
            fontWeight: FontWeight.w500,
            color: const Color.fromARGB(255, 255, 23, 46)),
      ),
    ];
  }
}
