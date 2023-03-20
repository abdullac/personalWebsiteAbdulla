import 'package:flutter/material.dart';
import 'package:personalwebsite/core/constents/colors.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/home_page/core/widgets/image_area.dart';
import 'package:personalwebsite/section/home_page/core/widgets/label_area.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePageReal extends StatelessWidget {
  const HomePageReal({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInfo) {
      Screen(sizingInfo: sizingInfo);
      var isLandscape = Screen.internal.isLandscape == true;

      return Container(
        color: kTransparent,
        child: isLandscape
            ? Row(children: homePagelabeAndImage(isLandscape: isLandscape))
            : Column(children: homePagelabeAndImage(isLandscape: isLandscape)),
      );
    });
  }

  List<Widget> homePagelabeAndImage({required bool isLandscape}) {
    return [
      homePagelabeOrImage(
        child: const LabelArea(),
        isLandscape: isLandscape,
        landScapeFlex: 1,
        nonLandScapeFlex: 1,
      ),
      homePagelabeOrImage(
        child: const ImageArea(),
        isLandscape: isLandscape,
        landScapeFlex: 1,
        nonLandScapeFlex: 2,
      ),
    ];
  }

  Expanded homePagelabeOrImage({
    required Widget child,
    required bool isLandscape,
    required int landScapeFlex,
    required int nonLandScapeFlex,
  }) {
    return Expanded(
        flex: isLandscape ? landScapeFlex : nonLandScapeFlex,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: kBlack915,
          child: Stack(
            children: [child],
          ),
        ));
  }
}
