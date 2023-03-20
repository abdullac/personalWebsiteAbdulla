import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalwebsite/section/contact_page/core/contact_constents.dart';
import 'package:personalwebsite/section/contact_page/core/widgets/contact_form_field_widget.dart';
import 'package:personalwebsite/section/contact_page/core/widgets/snackbar_while_submit.dart';
import 'package:personalwebsite/section/contact_page/page_contact.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';

Flexible nameFormFieldWidget() {
  return contactFormFieldWidget(
    flex: 1,
    controller: nameEditingController,
    textInputType: TextInputType.name,
    validatorCondition: (nameValue) => nameValue.length < 3,
    errorText: formNameError,
    labelText: formNameLabel,
    hintText: formNameHint,
  );
}

Flexible numberFormFieldWidget() {
  return contactFormFieldWidget(
    flex: 1,
    controller: contactEditingController,
    textInputType: TextInputType.number,
    validatorCondition: (numberValue) => numberValue.length < 10,
    errorText: formNumberError,
    labelText: formNumberLabel,
    hintText: formNumberHint,
  );
}

Flexible emailFormFieldWidget() {
  return contactFormFieldWidget(
    flex: 3,
    controller: emailEditingController,
    textInputType: TextInputType.emailAddress,
    validatorCondition: (emailValue) => !EmailValidator.validate(emailValue),
    errorText: formEmailError,
    labelText: formEmailLabel,
    hintText: formEmailHint,
  );
}

Flexible messageFormFieldWidget() {
  return contactFormFieldWidget(
    flex: 6,
    controller: messageEditingController,
    textInputType: TextInputType.multiline,
    validatorCondition: (messageValue) => messageValue.length < 5,
    errorText: formMessageError,
    labelText: formMessageLabel,
    height: double.infinity,
    maximumLines: 15,
  );
}

Flexible formFieldSubmitButton() {
  return Flexible(
    flex: 3,
    child: Center(
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: submitButtonStyle,
          onPressed: () => submitForm(),
          child: Text(
            submitButtonTitle,
            style: GoogleFonts.varelaRound(
              textStyle: TextStyle(
                fontSize: mainShortSize(3.3),
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

Future<void> submitForm() async {
  if (ContactPage.formKey.currentState != null) {
    if (ContactPage.formKey.currentState!.validate()) {
      bool googleFormSubmitted = await submitFormToGoogleSheetle();
      ScaffoldMessenger.of(ContactPage.contactPageGlobalKey).showSnackBar(
        snackBarWhileSubmit(googleFormSubmitted),
      );
      if (googleFormSubmitted == true) {
        nameEditingController.text = "";
        contactEditingController.text = "";
        emailEditingController.text = "";
        messageEditingController.text = "";
      }
    } else {
      ScaffoldMessenger.of(ContactPage.contactPageGlobalKey)
          .showSnackBar(snackBarWhileSubmit());
    }
  }
}

Future<bool> submitFormToGoogleSheetle() async {
  bool seccesSubmit;
  const sriptUrl =
      "https://script.google.com/macros/s/AKfycbwALvApnffFwLcmPAPhlADRvVYMgYep5AClrkQZnhLA7cIHeXAfp1m7GPKbm-7pudY/exec";
  String tempName = nameEditingController.text;
  String tempContact = contactEditingController.text;
  String tempEmail = emailEditingController.text;
  String tempMessage = messageEditingController.text;

  String queryString =
      "?name=$tempName&contact=$tempContact&email=$tempEmail&message=$tempMessage";
  var finalUri = Uri.parse(sriptUrl + queryString);
  try {
    var response = await http.get(finalUri);
    if (response.statusCode == 200 || response.statusCode == 201) {
      var bodyResponse = convert.jsonDecode(response.body);
      seccesSubmit = true;
    } else {
      seccesSubmit = false;
    }
  } catch (e) {
    seccesSubmit = false;
  }
  return seccesSubmit;
}
