import 'package:flutter/material.dart';
import 'package:personalwebsite/core/transparent_screen/variables/colors.dart';
import 'package:personalwebsite/core/transparent_screen/widgets/gradient_and_shadow_assist.dart';

class MainScreenShow extends StatelessWidget {
  final List<Text>? texWidgetList;
   const MainScreenShow({
    super.key,
    this.texWidgetList,
  });


  @override
  Widget build(BuildContext context) {
    return GradientAndShadowAssist(
      mainColor: blueGrey40,
      backgroundBlendMode: BlendMode.xor,
      boxShadow: [
        BoxShadow(
            color: grey900_60,
            offset: const Offset(8, 20),
            spreadRadius: 0.0,
            blurRadius: 4.0,
            blurStyle: BlurStyle.normal),
      ],
      isTextVisibile: true,
      texWidgetList: texWidgetList,
    );
  }
}
