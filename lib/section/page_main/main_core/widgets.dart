

  import 'package:flutter/material.dart';
import 'package:personalwebsite/section/page_main/main_core/main_dimonsions.dart';

Widget sectionHeading(String title,[double? height]) {
    return Container(
      color: Colors.black,
      height: height,
      child: Center(
          child: Container(
            padding: EdgeInsets.only(left: 30,right: 30,bottom: 20),
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/headlinebackground.png"),fit: BoxFit.fill
        )),
        child: Text(
          title,
          style: mainHeadLineStyle(),
        ),
      )),
    );
  }  

 