import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/functions.dart';
import 'package:personalwebsite/section/home_page/page_home.dart';
import 'dart:math' as math;

class GotoMainPageButton extends StatelessWidget {
  const GotoMainPageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: IconButton(
        onPressed: () {
          homePageToMainpage();
        },
        color: Colors.white.withOpacity(0.2),
        hoverColor: Colors.red,
        highlightColor: Colors.blue,
        focusColor: Colors.amber,
        splashColor: Colors.green,
        iconSize: shortSize100(10),
        icon: Transform.rotate(
          angle: math.pi * 180 / 360,
          child: const Icon(Icons.double_arrow_rounded),
        ),
      ),
    );
  }
}
