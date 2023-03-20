import 'package:flutter/material.dart';

Align portfolioSubimagesView({
  required Alignment alignment,
  required Matrix4 transform,
  double? height,
  double? maxHeight,
  required List<BoxShadow> shadowsList,
  required String imageName,
}) {
  return Align(
    alignment: alignment,
    child: AnimatedContainer(
      transform: transform,
      duration: const Duration(milliseconds: 2000),
      curve: Curves.fastOutSlowIn,
      child: Container(
        constraints:
            maxHeight != null ? BoxConstraints(maxHeight: maxHeight) : null,
        decoration: BoxDecoration(
          boxShadow: shadowsList,
        ),
        child: Image.asset(
          imageName,
          height: height,
        ),
      ),
    ),
  );
}
