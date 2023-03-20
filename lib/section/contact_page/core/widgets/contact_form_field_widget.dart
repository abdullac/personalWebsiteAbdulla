
import 'package:flutter/material.dart';

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
      color: Colors.black,
      padding: const EdgeInsets.all(1),
      child: TextFormField(
        controller: controller,
        maxLines: maximumLines ?? 1,
        keyboardType: textInputType,
        validator: (formFieldValue) =>
            formFieldValue != null && validatorCondition(formFieldValue)
                ? errorText
                : null,
        decoration: InputDecoration(
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
