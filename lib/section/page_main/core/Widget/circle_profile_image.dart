import 'package:flutter/material.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';

Widget circleProfileImage([double? radious]) {
  return Center(
    child: Transform.scale(
      scaleX: -1.0,
      child: CircleAvatar(
          backgroundColor: Colors.black,
          radius: radious ?? mainHeight(15),
          backgroundImage: const AssetImage("assets/myPhotoFace.webp")),
    ),
  );
}
