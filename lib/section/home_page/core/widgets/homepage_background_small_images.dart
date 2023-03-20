import 'package:flutter/material.dart';
import 'package:personalwebsite/core/constents/colors.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/home_page/core/home_constents.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomepageBackgroundSmallImages extends StatelessWidget {
  const HomepageBackgroundSmallImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 1,
      child: ResponsiveBuilder(builder: (context, sizingInfo) {
        Screen(sizingInfo: sizingInfo);

        return Container(
          color: kBlack,
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: homepageBackgroundImagesCrossAxisCount),
              itemCount: homepageBackgroundImagesItemCount(),
              itemBuilder: (BuildContext ctx, int index) {
                return Column(
                  children: [
                    homepageBackgroundGridItemTopSpace(index),
                    homepageBackgroundGridItemCenterImage(index),
                    homepageBackgroundGridItemBottomSpace(index),
                  ],
                );
              }),
        );
      }),
    );
  }

  Flexible homepageBackgroundGridItemBottomSpace(int index) {
    return Flexible(
      flex: index % 2 == 0 ? 5 : 1,
      child: const SizedBox(),
    );
  }

  Flexible homepageBackgroundGridItemCenterImage(int index) {
    return Flexible(
      flex: 14,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(imageList[index % imageList.length]))),
      ),
    );
  }

  Flexible homepageBackgroundGridItemTopSpace(int index) {
    return Flexible(
      flex: index % 2 == 0 ? 1 : 5,
      child: const SizedBox(),
    );
  }
}
