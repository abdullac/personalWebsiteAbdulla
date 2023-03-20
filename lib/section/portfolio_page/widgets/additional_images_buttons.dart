import 'package:flutter/material.dart';
import 'package:personalwebsite/section/portfolio_page/core/portfolio_constents.dart';
import 'package:personalwebsite/section/portfolio_page/page_portfolio.dart';

Align additioanalImagesScrollControllButtons() {
  return Align(
    alignment: Alignment.center,
    child: ValueListenableBuilder(
        valueListenable: nextAndPreviosNotifier,
        builder: (context, newValue, _) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              additionalImagesPreviosButton(newValue),
              additionalImagesNextButton(newValue),
            ],
          );
        }),
  );
}

Opacity additionalImagesPreviosButton(NextAAndPrevios newValue) {
  return Opacity(
    opacity: newValue == NextAAndPrevios.next ? 0.4 : 1,
    child: IconButton(
      onPressed: additionalImagesPreviosPressed,
      icon: Icon(Icons.keyboard_double_arrow_left_rounded,
          color: Colors.red[200]?.withOpacity(0.7)),
    ),
  );
}

Opacity additionalImagesNextButton(NextAAndPrevios newValue) {
  return Opacity(
    opacity: newValue == NextAAndPrevios.previos ? 0.4 : 1,
    child: IconButton(
      onPressed: additionalImagesNextPressed,
      icon: Icon(Icons.keyboard_double_arrow_right_rounded,
          color: Colors.red[200]?.withOpacity(0.7)),
    ),
  );
}

void additionalImagesPreviosPressed() {
  if (additionalImageItemIndexNotifier.value == 0) {
    nextAndPreviosNotifier.value = NextAAndPrevios.next;
  } else {
    additionalImageItemIndexNotifier.value -= 1;
    nextAndPreviosNotifier.value = NextAAndPrevios.both;
    if (additionalImageItemIndexNotifier.value == 0) {
      nextAndPreviosNotifier.value = NextAAndPrevios.next;
    }
  }
  additionalImageItemScrollControll();
}

void additionalImagesNextPressed() {
  if (additionalImageItemIndexNotifier.value ==
      portfolioAdditionalImageList.length - 1) {
    nextAndPreviosNotifier.value = NextAAndPrevios.previos;
  } else {
    additionalImageItemIndexNotifier.value += 1;
    nextAndPreviosNotifier.value = NextAAndPrevios.both;
    if (additionalImageItemIndexNotifier.value ==
        portfolioAdditionalImageList.length - 1) {
      nextAndPreviosNotifier.value = NextAAndPrevios.previos;
    }
  }
  additionalImageItemScrollControll();
}

Future<void> additionalImageItemScrollControll() {
  return PortfolioPage.additionalImageItemScrollController.scrollTo(
      index: additionalImageItemIndexNotifier.value,
      duration: const Duration(milliseconds: 500));
}
