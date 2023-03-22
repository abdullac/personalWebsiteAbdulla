import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalwebsite/core/constents/colors.dart';
import 'package:personalwebsite/core/constents/text_sizes.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';
import 'package:personalwebsite/section/portfolio_page/core/dimonsions/portfolio_dimonsion.dart';
import 'package:personalwebsite/section/portfolio_page/core/portfolio_constents.dart';
import 'package:personalwebsite/section/portfolio_page/page_portfolio.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

Container additionalImagesAndTitles() {
  return scrollablePositionedList(
    itemBuilder: (ctx, index) {
      return Container(
        color: kGrey05,
        margin: EdgeInsets.symmetric(
          horizontal: portfolioAdditionalImagesDimonsion(100 / 25),
          vertical: 10,
        ),
        child: ValueListenableBuilder(
            valueListenable: additionalImageItemIndexNotifier,
            builder: (context, newVlue, _) {
              return Container(
                decoration: additionalImagesItemBorderAndDecoration(index),
                child: Column(
                  children: [
                    additionalImagesItemImageportion(index),
                    additionalImagesItemTitleportion(index),
                  ],
                ),
              );
            }),
      );
    },
  );
}

Container scrollablePositionedList(
    {required Widget Function(BuildContext, int) itemBuilder}) {
  return Container(
    color: kBlack,
    child: ScrollablePositionedList.builder(
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: portfolioAdditionalImageList.length,
      itemScrollController: PortfolioPage.additionalImageItemScrollController,
      itemPositionsListener: PortfolioPage.additionalImageItemPositionsListener,
      itemBuilder: itemBuilder,
    ),
  );
}

Flexible additionalImagesItemImageportion(int index) {
  return Flexible(
    flex: 4,
    child: Container(
      width: portfolioAdditionalImagesDimonsion(100 / 4),
      height: double.infinity,
      decoration: BoxDecoration(
          color: kBlack26,
          image: DecorationImage(
              image: AssetImage(portfolioAdditionalImageList[index]))),
    ),
  );
}

Flexible additionalImagesItemTitleportion(int index) {
  return Flexible(
    flex: 2,
    child: Container(
      color: kBlack915,
      width: portfolioAdditionalImagesDimonsion(100 / 4),
      padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
      child: Center(
        child: Text(
          portfolioAdditionalTextList[index],
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
    ),
  );
}
