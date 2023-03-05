import 'package:flutter/material.dart';
import 'package:personalwebsite/core/transparent_screen/variables/colors.dart';
import 'package:personalwebsite/core/transparent_screen/widgets/gradient_and_shadow_assist.dart';
import 'package:personalwebsite/core/transparent_screen/widgets/main_screen_show.dart';
import 'package:personalwebsite/core/transparent_screen/widgets/run_button.dart';

class TransparentScreenWidget extends StatelessWidget {
  final List<String>? textTitles;
  List<Positioned>? positionedCustomWidgetList;
  final Size? increseTransParentScreensize;
  TransparentScreenWidget({
    Key? key,
    this.textTitles,
    this.positionedCustomWidgetList,
    this.increseTransParentScreensize,
  }) : super(key: key) {
    increseTransParentScreensizeCustom = increseTransParentScreensize;
  }
  static Size? increseTransParentScreensizeCustom;

  @override
  Widget build(BuildContext context) {
    // double width = deviceType() == "desktop"
    // ? shortSize() * 78 / 100
    //  : deviceType() == "tablet"
    //  ? shortSize() * 78/100
    //   : shortSize() * 100 /100;
    return Container(
      // color: Colors.deepOrange.withOpacity(0.05),
      padding: const EdgeInsets.only(bottom: 20),
      width: null,
      // width
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: Alignment.center,
            children: defaultWidgetListt(),
          ),
        ],
      ),
    );
  }

  List<Widget> defaultWidgetListt() {
    positionedCustomWidgetList = positionedCustomWidgetList ?? [];
    var defualtWidgetList = [
      Container(
        // color: Colors.blue.withOpacity(0.05),
        // width: double.infinity,
        height: 20,
      ),
      bottomSideShadowAsist(texWidgetList: textList()),
      topSideShadowAsist(texWidgetList: textList()),
      MainScreenShow(texWidgetList: textList()),
      overCoverGradientAsist(texWidgetList: textList()),
      (positionedCustomWidgetList!.isEmpty && increseTransParentScreensize == null)
          ? const RunButton()
          : SizedBox(
              width: increseTransParentScreensize != null
                  ? increseTransParentScreensize!.width
                  : null,
              height: increseTransParentScreensize != null
                  ? increseTransParentScreensize!.height
                  : null,
            ),
    ];
    positionedCustomWidgetList!.isNotEmpty
        ? defualtWidgetList.addAll(positionedCustomWidgetList!)
        : defualtWidgetList;
    return defualtWidgetList;
  }

  List<Text>? textList() {
    List<Text> textTitleList = [];
    textTitles?.forEach((element) {
      textTitleList.add(Text(
        element,
        style: TextStyle(
          fontSize: 10,
          color: greenAcent75,
          shadows: [
            BoxShadow(
                color: black50,
                offset: const Offset(12, 15),
                spreadRadius: 0.0,
                blurRadius: 3,
                blurStyle: BlurStyle.normal),
          ],
        ),
      ));
    });
    return textTitleList.isNotEmpty ? textTitleList : null;
  }
}
