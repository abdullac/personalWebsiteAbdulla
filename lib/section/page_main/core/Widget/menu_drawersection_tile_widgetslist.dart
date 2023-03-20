import 'package:flutter/material.dart';
import 'package:personalwebsite/core/constents/colors.dart';
import 'package:personalwebsite/section/page_main/core/Widget/slider_menu_list.dart';
import 'package:personalwebsite/section/page_main/core/main_constents.dart';
import 'package:personalwebsite/section/page_main/page_main.dart';

List<Widget> sectionTileWidgetsList() {
  List<Widget> sectionTileItem = [];
  for (int index = 0; index < sectionTileItemsLists.length; index++) {
    sectionTileItem.add(
      InkWell(
        onTap: () {
          sectionTileOnTap(index);
        },
        child: Center(
          child: ListTile(
            leading: Icon(
              sectionTileItemsLists[index][0],
              color: kRedAccent,
            ),
            title: Text(
              sectionTileItemsLists[index][1],
              style: TextStyle(color: kRed),
            ),
          ),
        ),
      ),
    );
  }
  return sectionTileItem;
}

void sectionTileOnTap(int index) {
  drawerMenuClose();
  if (index == 0) {
    toHomePage();
  } else {
    PageMain.itemScrollController
        .scrollTo(index: index, duration: const Duration(milliseconds: 700));
    PageMain.itemPositionListner.itemPositions.addListener(() {});
  }
}
