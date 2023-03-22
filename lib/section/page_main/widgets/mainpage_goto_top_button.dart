import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personalwebsite/applications/appbar_bloc/appbar_bloc.dart';
import 'package:personalwebsite/applications/mainpage_bloc/mainpage_bloc.dart';
import 'package:personalwebsite/core/constents/colors.dart';
import 'package:personalwebsite/main.dart';
import 'package:personalwebsite/section/page_main/page_main.dart';

Positioned gotoTopButton() {
  return Positioned(
    bottom: 10,
    right: 5,
    child: ValueListenableBuilder(
      valueListenable: gotoTopButtonNotifier,
      builder: (context, newValue, _) {
        return newValue == false
            ? const SizedBox()
            : CircleAvatar(
                backgroundColor: kGrey05,
                child: IconButton(
                  onPressed: () {
                    BlocProvider.of<AppbarBloc>(
                            NavigationService.navigatorKey.currentContext!)
                        .add(const TransparentBackground());
                    BlocProvider.of<MainpageBloc>(
                            NavigationService.navigatorKey.currentContext!)
                        .add(const GoToTop());
                    // mainpageGotoTopButtonPressed();
                  },
                  icon: Icon(
                    Icons.keyboard_double_arrow_up_rounded,
                    color: kBlack915,
                  ),
                ),
              );
      },
    ),
  );
}

void mainpageGotoTopButtonPressed() {
  // BlocProvider.of<AppbarBloc>(NavigationService.navigatorKey.currentContext!)
  //     .add(const TransparentBackground());
  PageMain.itemScrollController.scrollTo(
    index: 1,
    duration: const Duration(milliseconds: 500),
  );
  gotoTopButtonNotifier.value = false;
}
