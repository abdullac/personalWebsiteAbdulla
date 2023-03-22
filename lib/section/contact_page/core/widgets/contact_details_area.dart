import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalwebsite/core/constents/colors.dart';
import 'package:personalwebsite/core/constents/text_sizes.dart';
import 'package:personalwebsite/section/contact_page/core/contact_constents.dart';
import 'package:personalwebsite/section/contact_page/page_contact.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';

Widget contactDetailsArea(ContactArea contactArea) {
  return Flexible(
    flex: contactArea == ContactArea.column ? 1 : 2,
    child: Container(
      color: kTransparent,
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
  return Flexible(
    flex: 1,
    child: Center(
      child: Text(
        connectMeTitle,
        style: contactSubTitleStyle(),
      ),
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
    padding: EdgeInsets.all(mainShortSize(2)),
    child: Icon(
      contactDetailTitlesAndIconsList[index][1],
      color: kRedAccent,
      size: mainShortSize(5),
    ),
  );
}

Padding contactDetailTitle(int index) {
  return Padding(
    padding: EdgeInsets.all(mainShortSize(2)),
    child: Text(contactDetailTitlesAndIconsList[index][0],
        style: GoogleFonts.varelaRound(
          textStyle: TextStyle(
            color: kRed,
            // fontSize: mainShortSize(3.3),
            fontSize: textSize2(),
          ),
        )),
  );
}
