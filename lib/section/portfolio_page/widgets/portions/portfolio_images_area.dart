import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalwebsite/core/constents/colors.dart';
import 'package:personalwebsite/core/constents/text_sizes.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';
import 'package:personalwebsite/section/portfolio_page/core/dimonsions/portfolio_dimonsion.dart';
import 'package:personalwebsite/section/portfolio_page/core/portfolio_constents.dart';
import 'package:personalwebsite/section/portfolio_page/page_portfolio.dart';
import 'package:personalwebsite/section/portfolio_page/widgets/portfolio_dot_list.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

Flexible portfolioImagesArea() {
  return Flexible(
    flex: 6,
    child: Stack(
      children: [portfolioImagesListview(), portfolioDotButtons()],
    ),
  );
}

InkWell portfolioImagesListview() {
  return InkWell(
      onLongPress: portfolioImagesAreaLongPressed,
      child: Container(
        color: kBlack,
        child: ScrollablePositionedList.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemScrollController: PortfolioPage.itemScrollController,
          itemPositionsListener: PortfolioPage.itemPositionsListener,
          scrollDirection: Axis.horizontal,
          itemCount: portfolioImageList.length,
          itemBuilder: portfolioImagesListViewItemBuilder,
        ),
      ));
}

Widget portfolioImagesListViewItemBuilder(ctx, index) {
  return Container(
    color: kGrey05,
    margin: EdgeInsets.symmetric(
      horizontal: portfolioDimonsion(100 / 25),
      vertical: 10,
    ),
    child: InkWell(
      onTap: () {
        portfolioImagesItemOnTap(index);
      },
      child: Column(
        children: [
          portfolioimagesListImagePortion(index),
          portfolioimagesListTextPortion(index),
        ],
      ),
    ),
  );
}

Flexible portfolioimagesListImagePortion(index) {
  return Flexible(
    flex: 4,
    child: Container(
      width: portfolioDimonsion(100 / 4),
      height: double.infinity,
      margin: const EdgeInsets.symmetric(),
      decoration: BoxDecoration(
        color: kBlack,
        image: DecorationImage(
          fit: BoxFit.fitWidth,
          image: AssetImage(portfolioImageList[index]),
        ),
      ),
    ),
  );
}

Flexible portfolioimagesListTextPortion(index) {
  return Flexible(
    flex: 2,
    child: Container(
      color: kBlack26,
      width: portfolioDimonsion(100 / 4),
      height: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      child: Text(
        portfolioTextList[index],
        textAlign: TextAlign.center,
        maxLines: 2,
        overflow: TextOverflow.fade,
        style: GoogleFonts.varelaRound(
            textStyle: TextStyle(
          fontSize: textSize2(),
          color: kWhite80,
        )),
      ),
    ),
  );
}

portfolioImagesItemOnTap(int index) {
  subImagesAreaIndexNotifier.value = index;
  subImagesAreaIndexNotifier.notifyListeners();
}

void portfolioImagesAreaLongPressed() async {

  if (stopPortfolioImageScroll == true) {
    stopPortfolioImageScroll = false;
    await portfolioImagesListAutoScrolling();
  } else {
    stopPortfolioImageScroll = true;
  }
}

Future<void> portfolioImagesListAutoScrolling() async {
  int index = portfolioDotPositionNotifier.value == 0
      ? 0
      : (portfolioDotPositionNotifier.value + 1);
  for (index; index < portfolioImageList.length; index++) {
    portfolioDotPositionNotifier.value = index;
    subImagesAreaIndexNotifier.value = index;
    PortfolioPage.itemScrollController.scrollTo(
      index: index,
      duration: const Duration(milliseconds: 2000),
    );
    if (index == portfolioImageList.length - 1) {
      index = -1;
    } else {
      //
    }
    subImagesAreaIndexNotifier.notifyListeners();
    await Future.delayed(const Duration(seconds: 6), () {});
    if (stopPortfolioImageScroll == true) {
      break;
    }
  }
}
