import 'package:flutter/material.dart';

/// add label value controller and user respectively
Widget inputText(bool isPassword, String label, String value,
    TextEditingController controller, List<String> user) {
  /// add label value controller and user respectively
  return TextField(
    onChanged: (text) {
      value = text;
    },
    obscureText: isPassword,
    controller: controller,
    onSubmitted: (String inputText) {
      user.add(inputText);
      controller.clear();
    },
    decoration: InputDecoration(
      labelText: label,
      border: OutlineInputBorder(),
    ),
  );
}

/// add label value controller and user respectively
Widget inputLines(int noOfLines, String label, String value,
    TextEditingController controller, List<String> user) {
  /// add label value controller and user respectively
  return TextField(
    onChanged: (text) {
      value = text;
    },
    controller: controller,
    onSubmitted: (String inputText) {
      user.add(inputText);
      controller.clear();
    },
    maxLines: noOfLines,
    decoration: InputDecoration(
      labelText: label,
      border: OutlineInputBorder(),
    ),
  );
}
