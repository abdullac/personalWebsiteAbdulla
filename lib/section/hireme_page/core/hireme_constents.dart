import 'package:flutter/material.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';

const String hiremeHeading = "Hire Me";

const String hireText =
    "Enthusiastic, highly self-motivated and with a strong passion to acquire new skills in programming, I am here to pursue a growth-oriented career with a company that will provide me with an opportunity to apply my knowledge and skills in the field of software development , which will enable me to contribute my best to the organization.\n\nWe can build applications for Web and defferent types of operating systems like Android, Linux, Windows, ios and Mac. and we can build  responsive applications for different types of devices like Mobile, Tablet and Desktop.";
const String hireText1 =
    "Enthusiastic, highly self-motivated and with a strong passion to acquire new skills in programming, I am here to pursue a growth-oriented career with a company that will provide me with an opportunity to apply my knowledge and skills in the field of software development , which will enable me to contribute my best to the organization.\n\nWe can build applications for ";
const String hireText2 = "Android, Linux, Windows, ios and Mac";
const String hireText3 =
    ". and we can build  responsive applications for different types of devices like Mobile, Tablet and Desktop.";
const String hireText4 = "Web";
const String hireText5 = " and defferent types of operating systems like ";



//////  () =>  //////
  EdgeInsets hiremeContentsPadding() {
    return EdgeInsets.all(
              mainIsPortraitMobile() ? 8.0 : mainShortSize(15));
  }