import 'package:flutter/material.dart';
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
                backgroundColor: Colors.grey[700]?.withOpacity(0.5),
                child: IconButton(
                  onPressed: () {
                    mainpageGotoTopButtonPressed();
                  },
                  icon: Icon(
                    Icons.keyboard_double_arrow_up_rounded,
                    color: Colors.redAccent.withOpacity(0.8),
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
