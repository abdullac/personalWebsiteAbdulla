import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalwebsite/core/constents/colors.dart';
import 'package:personalwebsite/core/constents/text_sizes.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';

/// text
const String contactHeading = "Contact";
const String connectMeTitle = "Connect Me";
const String messageTitle = "Message Me";
const String submitButtonTitle = "Submit";

const String formNameLabel = "Name";
const String formNumberLabel = "Contact no";
const String formEmailLabel = "Email";
const String formMessageLabel = "Message";
const String formNameHint = "Enter your name here";
const String formNumberHint = "Enter your contact number here";
const String formEmailHint = "Enter your email here";
const String formMessageHint = "";
const String formNameError = "Enter Minimum 3 chareters";
const String formNumberError = "Enter valid contact number";
const String formEmailError = "Enter valid email";
const String formMessageError = "Please enter some words";

const String snackBarSubmitted = "Thank you, submited";
const String snackBarCNotSubmit = "Sorry ,C'nt submited";
const String snakBarSubmitError = "Please enter valid details";

/// style
ButtonStyle submitButtonStyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(
    kRedAccent,
  ),
);

/// text & icon nestedList
const List<List<dynamic>> contactDetailTitlesAndIconsList = [
  ["Abdulla", Icons.person],
  ["Malappuram, Kerala", Icons.place],
  ["abdullacforu@gmail.com", Icons.mail],
];

//////  () => ///////
BoxDecoration contactDetailContainerDecoration() {
  return BoxDecoration(
    color: kGrey05,
    borderRadius: const BorderRadius.all(Radius.circular(50)),
  );
}

TextStyle contactSubTitleStyle() {
  return GoogleFonts.varelaRound(
    textStyle: TextStyle(
      fontSize: textSize3(),
      fontWeight: FontWeight.bold,
      color: kWhite80,
      shadows: [
        Shadow(
          color: kRed05,
          offset: const Offset(1.5, 1.5),
          blurRadius: 1.5,
        ),
      ],
    ),
  );
}
