import 'package:flutter/material.dart';
import 'package:personalwebsite/section/page_main/page_main.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

ScrollablePositionedList mainPageListView() {
  return ScrollablePositionedList.builder(
    itemScrollController: PageMain.itemScrollController,
    itemCount: pagesList.length,
    shrinkWrap: true,
    itemBuilder: (BuildContext context, int index) {
      return pagesList[index];
    },
  );
}
