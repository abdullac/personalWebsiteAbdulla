import 'package:flutter/material.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';
import 'package:personalwebsite/section/portfolio_page/core/dimonsions/portfolio_dimonsion.dart';
import 'package:personalwebsite/section/portfolio_page/core/portfolio_constents.dart';
import 'package:personalwebsite/section/portfolio_page/page_portfolio.dart';
import 'package:personalwebsite/section/portfolio_page/widgets/portfolio_subimages_widget.dart';

Flexible portfolioSubImagesArea() {
  return Flexible(
      flex: 7,
      child: ValueListenableBuilder(
          valueListenable: subImagesAreaIndexNotifier,
          builder: (context, newsubImageIndex, _) {
            return Container(
              color: Colors.black.withOpacity(0.7),
              padding: EdgeInsets.symmetric(
                  vertical: 8, horizontal: portfolioDimonsion(4)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  portfolioSubimagesDesktopView(newsubImageIndex),
                  portfolioSubimagesTabletView(newsubImageIndex),
                  portfolioSubimagesMobileView(newsubImageIndex),
                ],
              ),
            );
          }));
}

Align portfolioSubimagesDesktopView(int newsubImageIndex) {
  return portfolioSubimagesView(
    alignment: Alignment.center,
    transform: portfolioSubDesktopViewTransform(newsubImageIndex),
    shadowsList: portfolioSubimagesDesktopShadow,
    imageName: portfolioImageList[newsubImageIndex],
  );
}

Align portfolioSubimagesTabletView(int newsubImageIndex) {
  return portfolioSubimagesView(
    alignment: Alignment.bottomRight,
    transform: portfolioSubTabletViewTransform(newsubImageIndex),
    shadowsList: portfolioSubimagesTabletShadow,
    imageName: portfolioTabImageList[newsubImageIndex],
    height: portfolioSubImagesSize(27),
    maxHeight: mainHeight(26),
  );
}

Align portfolioSubimagesMobileView(int newsubImageIndex) {
  return portfolioSubimagesView(
      alignment: Alignment.bottomLeft,
      transform: portfolioSubMobileViewTransform(newsubImageIndex),
      shadowsList: portfolioSubimagesMobileShadow,
      imageName: portfolioMobileImageList[newsubImageIndex],
      height: portfolioSubImagesSize(25),
      maxHeight: mainHeight(24));
}
