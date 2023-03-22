import 'dart:ui';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:personalwebsite/applications/appbar_bloc/appbar_bloc.dart';
import 'package:personalwebsite/applications/contactpage_bloc/contactpage_bloc.dart';
import 'package:personalwebsite/applications/homepage_bloc/home_page_bloc.dart';
import 'package:personalwebsite/applications/mainpage_bloc/mainpage_bloc.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomePageBloc>(create: (ctx) => HomePageBloc()),
        BlocProvider<MainpageBloc>(create: (ctx) => MainpageBloc()),
        BlocProvider<AppbarBloc>(create: (ctx) => AppbarBloc()),
        BlocProvider<ContactpageBloc>(create: (ctx) => ContactpageBloc()),
      ],
      child: MaterialApp(
        navigatorKey: NavigationService.navigatorKey,
        scrollBehavior: MyScrollBehavior(),
        theme: ThemeData.dark(),
        themeMode: ThemeMode.dark,
        home: ResponsiveBuilder(builder: (context, sizingInfo) {
          Screen(sizingInfo: sizingInfo);
          return SafeArea(
            child: Scaffold(
              extendBodyBehindAppBar: true,
              appBar: appBarPreferredSize(),
              body: const PageMain(),
            ),
          );
        }),
      ),
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

class NavigationService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}
