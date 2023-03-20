import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/core/widgets/appbar_preferresize.dart';
import 'package:personalwebsite/section/page_main/page_main.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyScrollBehavior(),
      theme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: ResponsiveBuilder(builder: (context, sizingInfo) {
        Screen(sizingInfo: sizingInfo);
        return SafeArea(
          child: Scaffold(
            appBar: appBarPreferredSize(),
            extendBodyBehindAppBar: true,
            body: const PageMain(),
          ),
        );
      }),
    );
  }
}

class MyScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.mouse,
        PointerDeviceKind.touch,
      };
}
