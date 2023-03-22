import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personalwebsite/applications/appbar_bloc/appbar_bloc.dart';
import 'package:personalwebsite/applications/homepage_bloc/home_page_bloc.dart';
import 'package:personalwebsite/core/constents/colors.dart';
import 'package:personalwebsite/core/constents/text_sizes.dart';
import 'package:personalwebsite/core/widgets/appbar_preferresize.dart';
import 'package:personalwebsite/main.dart';
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
              style: TextStyle(color: kRed,
              fontSize: textSize2()),
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
    BlocProvider.of<HomePageBloc>(
            NavigationService.navigatorKey.currentContext!)
        .add(const GoToHomePage());
    // toHomePage();
  } else {
    PageMain.itemScrollController
        .scrollTo(index: index, duration: const Duration(milliseconds: 700));
    PageMain.itemPositionListner.itemPositions.addListener(() {});
  }
}
