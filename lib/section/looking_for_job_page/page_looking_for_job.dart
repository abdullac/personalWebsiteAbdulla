import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/page_main/main_dimonsion/main_dimonsions.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LookingForJob extends StatelessWidget {
  const LookingForJob({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInfo) {
      Screen(sizingInfo: sizingInfo);
      return Container(
        height: mainHeight(40),
        color: Colors.black,
        child: Column(
          children: [
            lookingForJobHeading(),
            lookingForJobContent(),
          ],
        ),
      );
    });
  }

    Flexible lookingForJobHeading() {
    return Flexible(
      flex: 15,
      child: Container(
        // color: Colors.teal,
        color: Colors.black,
        child: Center(
          child: Text(
            "Hire Me",
            style: mainHeadLineStyle(),
          ),
        ),
      ),
    );
  }

  Flexible lookingForJobContent() {
    return Flexible(
      flex: 25,
      child: Container(
        // color: Colors.teal[900],
        color: Colors.black,
        child: const Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("jrortriutiroier iuir hgiur kj4 tiu 45injkrjt i4 tiu4erh i hiuhfukujhflk jds hfi uerh ferhfiekj fhkjdf jvh irj greijg ortjgo rj goier j oierj oriij goirgjort jrtijg ort oigj roigjrgjroig roigjrtiotp ogr ojrlgjjrjroig r ro rjroer  ooiert iujtopt uerropjr p  pr r jeroierrj  jjggldjrrtjterit  eraoiotiuo eruteroiut eroitueroituer roituroeirutoieru r oer"
            ,textAlign: TextAlign.justify,),
          ),
        ),
      ),
    );
  }

}