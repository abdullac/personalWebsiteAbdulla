import 'package:flutter/material.dart';
import 'package:personalwebsite/section/portfolio_page/widgets/additional_images_and_titles.dart';
import 'package:personalwebsite/section/portfolio_page/widgets/additional_images_buttons.dart';

Flexible portfolioAdditionalImagesArea() {
  return Flexible(
    flex: 6,
    child: Stack(
      children: [
        additionalImagesAndTitles(),
        additioanalImagesScrollControllButtons(),
      ],
    ),
  );
}

