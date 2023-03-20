import 'package:flutter/material.dart';
import 'package:personalwebsite/core/constents/colors.dart';
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
                    mainpageGotoTopButtonPressed();
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
  PageMain.itemScrollController.scrollTo(
    index: 1,
    duration: const Duration(milliseconds: 500),
  );
  gotoTopButtonNotifier.value = false;
}
