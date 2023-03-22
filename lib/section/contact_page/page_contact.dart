import 'package:flutter/material.dart';
import 'package:personalwebsite/core/constents/colors.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/contact_page/core/widgets/contact_form_widgets.dart';
import 'package:personalwebsite/section/page_main/widgets/section_heading.dart';
import 'package:personalwebsite/section/contact_page/core/contact_constents.dart';
import 'package:personalwebsite/section/contact_page/core/widgets/contact_details_area.dart';
import 'package:personalwebsite/section/contact_page/core/widgets/contact_form_area.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';
import 'package:responsive_builder/responsive_builder.dart';

enum ContactArea {
  column,
  row,
}

TextEditingController nameEditingController = TextEditingController();
TextEditingController contactEditingController = TextEditingController();
TextEditingController emailEditingController = TextEditingController();
TextEditingController messageEditingController = TextEditingController();

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  static final formKey = GlobalKey<FormState>();
  static dynamic contactPageGlobalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    contactPageGlobalKey = context;

    return ResponsiveBuilder(builder: (context, sizingInfo) {
      Screen(sizingInfo: sizingInfo);
      return Container(
        height: mainHeight(100),
        color: kBlack,
        child: Column(
          children: [
            sectionHeading(contactHeading),
            contactDetailsAndFormArea(),
          ],
        ),
      );
    });
  }

  Flexible contactDetailsAndFormArea() {
    bool targetedDevice = true;
    if (mainIsDeskTop() ||
        mainIsMobile() ||
        mainIsTablet() ||
        Screen.internal.sizeInfo.isLarge ||
        Screen.internal.sizeInfo.isExtraLarge) {
      targetedDevice = true;
    } else {
      targetedDevice = false;
    }
    return Flexible(
      flex: 17,
      child: Container(
        // color: Colors.teal,
        color: kTransparent,
        child: mainIsPortraitMobile() || targetedDevice == false
            ? Column(
                children: contactPortionsList(ContactArea.column),
              )
            : Row(
                children: contactPortionsList(ContactArea.row),
              ),
      ),
    );
  }

  List<Widget> contactPortionsList(ContactArea contactArea) {
    return [
      contactDetailsArea(contactArea),
      contactFormArea(contactArea),
    ];
  }
}
