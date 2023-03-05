import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/home_page/page_home.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ScrnMain extends StatelessWidget {
  const ScrnMain({super.key});

  static late Orientation orientation;

  @override
  Widget build(BuildContext context) {

    orientation = MediaQuery.of(context).orientation;
    if (kIsWeb) {
      ////
    } else if (Platform.isAndroid) {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.black,
        systemNavigationBarIconBrightness: Brightness.dark,
      ));
    }
    return ResponsiveBuilder(builder: (context, sizingInfo) {
      Screen(sizingInfo: sizingInfo);
      return const PageHome();
    });
  }
}
