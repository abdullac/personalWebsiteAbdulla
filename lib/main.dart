import 'package:flutter/material.dart';
import 'package:personalwebsite/scrn_main/scrn_main.dart';
import 'package:personalwebsite/section/home_page/page_home.dart';
import 'package:personalwebsite/section/page_main/page_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home:  Scaffold(
        body: PageMain(),
        // body: PageHome(),
      ),
    );
  }
}
