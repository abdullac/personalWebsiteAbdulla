import 'package:flutter/material.dart';
import 'package:personalwebsite/core/constents/colors.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';
import 'package:personalwebsite/section/portfolio_page/core/portfolio_constents.dart';
import 'package:personalwebsite/section/portfolio_page/page_portfolio.dart';
import 'package:personalwebsite/section/portfolio_page/widgets/portions/portfolio_images_area.dart';

Align portfolioDotButtons() {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: portfolioDotList(),
    ),
  );
}

List<Widget> portfolioDotList() {
  List<Widget> dotList = [];
  for (int index = 0; index < portfolioImageList.length; index++) {
    dotList.add(
      ValueListenableBuilder(
        valueListenable: portfolioDotPositionNotifier,
        builder: (context, newValue, _) {
          return InkWell(
            onTap: () async {
              await portfolioDotButtonItemOnTap(index);
            },
            child: portFolioDotButton(
              index,
              newValue,
              buttonColor: portfolioDotButtonSeletionColor(index, newValue),
              buttonNumberText: portfoliDotButtonNumberText(index),
            ),
          );
        },
      ),
    );
  }
  return dotList;
}

Container portFolioDotButton(
  int index,
  int newValue, {
  required Color? buttonColor,
  required Widget buttonNumberText,
}) {
  return Container(
    width: mainShortSize(3.4),
    height: mainShortSize(3.4),
    margin: const EdgeInsets.all(5),
    decoration: BoxDecoration(
      color: buttonColor,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
    ),
    child: buttonNumberText,
  );
}

Color? portfolioDotButtonSeletionColor(int index, int newValue) {
  return index == newValue
      ? kRed05
      : kGrey05;
}

Center portfoliDotButtonNumberText(int index) {
  return Center(
    child: Text(
      "${index + 1}",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: mainShortSize(3),
        color: kBlack915,
      ),
    ),
  );
}

Future<void> portfolioDotButtonItemOnTap(int index) async {
  await PortfolioPage.itemScrollController
      .scrollTo(index: index, duration: const Duration(milliseconds: 300));
  PortfolioPage.itemPositionsListener.itemPositions.addListener(() {});
  stopPortfolioImageScroll = true;
  portfolioDotPositionNotifier.value = (index);
  subImagesAreaIndexNotifier.value = index;
  portFolioImagesItemNotifier.value = index;
  subImagesAreaIndexNotifier.notifyListeners();
  portFolioImagesItemNotifier.notifyListeners();
  await Future.delayed(const Duration(seconds: 10), () {});
  stopPortfolioImageScroll = false;
  await portfolioImagesListAutoScrolling();
}
