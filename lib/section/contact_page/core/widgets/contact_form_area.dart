import 'package:flutter/material.dart';
import 'package:personalwebsite/core/constents/colors.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/contact_page/core/contact_constents.dart';
import 'package:personalwebsite/section/contact_page/core/widgets/contact_form_widgets.dart';
import 'package:personalwebsite/section/contact_page/page_contact.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';

Widget contactFormArea(ContactArea contactArea) {
  return Flexible(
    flex: contactArea == ContactArea.column ? 1 : 1,
    child: Form(
      key: ContactPage.formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Container(
        color: kTransparent,
        padding: const EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            messageTitleWidget(),
            nameAndNumberFormFieldsWidget(),
            emailFormFieldWidget(),
            messageFormFieldWidget(),
            formFieldSubmitButton(),
          ],
        ),
      ),
    ),
  );
}

Flexible messageTitleWidget() {
  return Flexible(
    flex: 2,
    child: Container(
      color: kTransparent,
      child: Center(
        child: Text(
          messageTitle,
          style: contactSubTitleStyle(),
        ),
      ),
    ),
  );
}

Flexible nameAndNumberFormFieldsWidget() {
  return Flexible(
    flex: 6,
    child: Center(
      child:
      // mainIsMobile() || Screen.internal.sizeInfo.isSmall == true
          // ? 
          Column(
              children: nameAndNumberFormFieldList(),
            )
          // : 
          // Row(
          //     children: nameAndNumberFormFieldList(),
          //   ),
    ),
  );
}

List<Widget> nameAndNumberFormFieldList() {
  return [
    nameFormFieldWidget(),
    numberFormFieldWidget(),
  ];
}
