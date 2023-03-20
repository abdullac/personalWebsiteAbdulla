import 'package:flutter/material.dart';
import 'package:personalwebsite/section/contact_page/core/contact_constents.dart';

SnackBar snackBarWhileSubmit([bool? googleFormSubmitted]) {
  return googleFormSubmitted != null
      ? googleFormSubmitted == true
          ? const SnackBar(
              backgroundColor: Colors.green,
              content: Center(child: Text(snackBarSubmitted)))
          : const SnackBar(
              backgroundColor: Colors.orangeAccent,
              content: Center(child: Text(snackBarCNotSubmit)))
      : const SnackBar(
          backgroundColor: Colors.yellow,
          content: Center(child: Text(snakBarSubmitError)));
}