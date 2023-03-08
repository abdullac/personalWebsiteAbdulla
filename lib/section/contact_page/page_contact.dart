import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/page_main/main_core/main_dimonsions.dart';
import 'package:personalwebsite/section/page_main/main_core/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInfo) {
      Screen(sizingInfo: sizingInfo);
      return Container(
        height: mainHeight(100),
        color: Colors.cyanAccent,
        child: Column(
          children: [
            sectionHeading("Contact"),
            // contactPageHeading(),
            contactDetailsAndFormArea(),
          ],
        ),
      );
    });
  }

  // Flexible contactPageHeading() {
  //   return Flexible(
  //     flex: 3,
  //     child: Container(
  //       // color: Colors.teal,
  //       color: Colors.purple[700],
  //       child: Center(
  //         child: Text(
  //           "Contact",
  //           style: mainHeadLineStyle(),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  Flexible contactDetailsAndFormArea() {
    return Flexible(
      flex: 17,
      child: Container(
          // color: Colors.teal,
          color: Colors.purple[900],
          child: contactPortions()),
    );
  }

  Widget contactPortions() {
    return mainIsDeskTop()
        ? Row(
            children: [
              contactDetailsArea(),
              contactFormArea(),
            ],
          )
        : Column(
            children: [
              contactDetailsArea(),
              contactFormArea(),
            ],
          );
  }

  Widget contactDetailsArea() {
    return Flexible
    (
      child: Container(
        color: Colors.purple[400],
      ),
    );
  }

  Widget contactFormArea() {
    return Flexible(
      child: Container(
        color: Colors.purple[700],
      ),
    );
  }
}
