import 'package:flutter/material.dart';
import 'package:personalwebsite/section/page_main/core/Widget/circle_profile_image.dart';
import 'package:personalwebsite/section/page_main/core/Widget/slider_menu_list.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';

Widget imageAvatarAndName() {
  var imageAvatarAndNameWidgets = [
    SizedBox(
      height: mainHeight(35),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: circleProfileImage(),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "Abdulla",
        style: TextStyle(
            color: Colors.redAccent[700],
            fontWeight: FontWeight.w900,
            fontSize: mainShortSize(4)),
      ),
    ),
  ];

  return InkWell(
    onTap: () => toHomePage(),
    child: SizedBox(
      height: mainIsLandscapeMobile() ? mainHeight(100) : mainHeight(45),
      child: mainIsTablet()
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageAvatarAndNameWidgets,
            )
          : Column(
              mainAxisAlignment: mainIsLandscapeMobile()
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.start,
              children: imageAvatarAndNameWidgets,
            ),
    ),
  );
}
