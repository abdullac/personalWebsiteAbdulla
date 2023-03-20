import 'package:flutter/material.dart';
import 'package:personalwebsite/section/contact_page/core/contact_constents.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';

Widget contactDetailsArea() {
  return Flexible(
    child: Container(
      color: Colors.black,
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          connectMeTitleWidget(),
          contactDetailsWidgets(),
        ],
      ),
    ),
  );
}

Flexible connectMeTitleWidget() {
  return const Flexible(
    flex: 1,
    child: Center(
      child: Text(connectMeTitle),
    ),
  );
}

Flexible contactDetailsWidgets() {
  List<Widget> contactDetailsWidgetsList = [];
  for (int index = 0; index < contactDetailTitlesAndIconsList.length; index++) {
    contactDetailsWidgetsList.add(Container(
      margin: EdgeInsets.all(mainShortSize(1)),
      decoration: contactDetailContainerDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          contactDetailIcon(index),
          contactDetailTitle(index),
        ],
      ),
    ));
  }
  return Flexible(
    flex: 5,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: contactDetailsWidgetsList,
    ),
  );
}

Padding contactDetailIcon(int index) {
  return Padding(
    padding: EdgeInsets.all(mainShortSize(1.5)),
    child: Icon(
      contactDetailTitlesAndIconsList[index][1],
      color: Colors.redAccent[400],
      size: mainShortSize(4.5),
    ),
  );
}

Padding contactDetailTitle(int index) {
  return Padding(
    padding: EdgeInsets.all(mainShortSize(1.5)),
    child: Text(
      contactDetailTitlesAndIconsList[index][0],
      style:
          TextStyle(color: Colors.redAccent[100], fontSize: mainShortSize(3)),
    ),
  );
}
