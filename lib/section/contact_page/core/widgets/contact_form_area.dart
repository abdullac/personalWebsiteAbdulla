import 'package:flutter/material.dart';
import 'package:personalwebsite/section/contact_page/core/contact_constents.dart';
import 'package:personalwebsite/section/contact_page/core/widgets/contact_form_widgets.dart';
import 'package:personalwebsite/section/contact_page/page_contact.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';

Widget contactFormArea() {
  return Flexible(
    child: Form(
      key: ContactPage.formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Container(
        color: Colors.black,
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
      color: Colors.black,
      child: const Center(
        child: Text(messageTitle),
      ),
    ),
  );
}

Flexible nameAndNumberFormFieldsWidget() {
  return Flexible(
    flex: 6,
    child: Center(
      child: mainIsMobile()
          ? Column(
              children: nameAndNumberFormFieldList(),
            )
          : Row(
              children: nameAndNumberFormFieldList(),
            ),
    ),
  );
}

List<Widget> nameAndNumberFormFieldList() {
  return [
    nameFormFieldWidget(),
    numberFormFieldWidget(),
  ];
}
