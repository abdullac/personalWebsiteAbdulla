  import 'package:flutter/material.dart';
import 'package:personalwebsite/section/page_main/core/Widget/menu_drawersection_tile_widgetslist.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';

Widget setionTilesGridView() {
    return SizedBox(
      height: mainIsLandscapeMobile() ? mainHeight(100) : mainHeight(45),
      width: mainWidth(30),
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: mainIsTablet() ? 2 : 1, childAspectRatio: 5),
        children: sectionTileWidgetsList(),
      ),
    );
  }
