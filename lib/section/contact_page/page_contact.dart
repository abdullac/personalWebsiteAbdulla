import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/page_main/widgets/section_heading.dart';
import 'package:personalwebsite/section/contact_page/core/contact_constents.dart';
import 'package:personalwebsite/section/contact_page/core/widgets/contact_details_area.dart';
import 'package:personalwebsite/section/contact_page/core/widgets/contact_form_area.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
        color: Colors.black,
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
    return Flexible(
      flex: 17,
      child: Container(
        // color: Colors.teal,
        color: Colors.black,
        child: !mainIsPortraitMobile()
            ? Row(
                children: contactPortionsList(),
              )
            : Column(
                children: contactPortionsList(),
              ),
      ),
    );
  }

  List<Widget> contactPortionsList() {
    return [
      contactDetailsArea(),
      contactFormArea(),
    ];
  }
}
