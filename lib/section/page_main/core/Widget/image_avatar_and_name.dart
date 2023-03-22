import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personalwebsite/applications/homepage_bloc/home_page_bloc.dart';
import 'package:personalwebsite/core/constents/colors.dart';
import 'package:personalwebsite/core/constents/strings.dart';
import 'package:personalwebsite/main.dart';
import 'package:personalwebsite/section/page_main/core/Widget/circle_profile_image.dart';
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
        myName,
        style: TextStyle(
            color: kRedAccent,
            fontWeight: FontWeight.w900,
            fontSize: mainShortSize(4),
            shadows: const [
              Shadow(
                color: kBlack26,
                offset: Offset(2, 2),
                blurRadius: 1,
              )
            ]),
      ),
    ),
  ];

  return InkWell(
    onTap: () => BlocProvider.of<HomePageBloc>(
            NavigationService.navigatorKey.currentContext!)
        .add(const GoToHomePage()),
    // toHomePage(),
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
