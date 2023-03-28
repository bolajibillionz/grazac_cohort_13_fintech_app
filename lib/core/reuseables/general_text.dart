import 'package:ch13_fintech_app/core/size_config.dart';
import 'package:flutter/material.dart';

Text createGeneralText({
  required String inputText,
  required double fontSize,
  required String family,
  required FontWeight weight,
  required Color colorName,
  bool? softWrap,
  double letterSpacing = 0.0,
  TextAlign? textAlign,
}) {
  return Text(
    inputText,
    textAlign: textAlign,
    softWrap: softWrap,
    style: TextStyle(
        letterSpacing: getProportionateScreenWidth(letterSpacing),
        fontSize: getProportionateScreenWidth(fontSize),
        fontFamily: family,
        fontWeight: weight,
        color: colorName),
  );
}


