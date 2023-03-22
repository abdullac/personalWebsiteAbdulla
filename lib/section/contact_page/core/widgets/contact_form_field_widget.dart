import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalwebsite/core/constents/colors.dart';
import 'package:personalwebsite/core/constents/text_sizes.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';

Flexible contactFormFieldWidget({
  required int flex,
  double? height,
  required TextEditingController controller,
  int? maximumLines,
  required TextInputType textInputType,
  required bool Function(String formFieldValue) validatorCondition,
  required String errorText,
  required String labelText,
  String? hintText,
}) {
  return Flexible(
    flex: flex,
    child: Container(
      height: height,
      color: kTransparent,
      padding: const EdgeInsets.all(1),
      child: TextFormField(
        controller: controller,
        maxLines: maximumLines ?? 1,
        keyboardType: textInputType,
        validator: (formFieldValue) =>
            formFieldValue != null && validatorCondition(formFieldValue)
                ? ""
                // errorText
                : null,
        style: GoogleFonts.varelaRound(
            textStyle: TextStyle(fontSize: textSize2())),
        decoration: InputDecoration(
          // suffixIcon: const Icon(Icons.error_outline),
          contentPadding: const EdgeInsets.all(4),
          labelText: labelText,
          hintText: hintText,
          border: const OutlineInputBorder(),
          errorStyle: const TextStyle(
            height: 0.07,
            fontSize: 8,
          ),
        ),
      ),
    ),
  );
}
