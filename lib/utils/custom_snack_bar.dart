import 'package:flutter/material.dart';
import 'package:old_portfolio/utils/constants.dart';

// ignore: non_constant_identifier_names
void CustomSnackBar(context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: Duration(seconds: 2),
      content: Text(
        text,
        style: TextStyle(
          color: kDarkColor,
          fontSize: 17,
        ),
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: kPrimaryColor,
    ),
  );
}
