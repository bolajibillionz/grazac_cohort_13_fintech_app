import 'package:flutter/material.dart';

import '../size_config.dart';

class GeneralButton extends StatelessWidget {
  GeneralButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
    required this.containerHeight,
    required this.containerWidth,
    required this.borderRadiusSize,
    required this.buttonTextSize,
    required this.buttonTextColor,
    required this.buttonColor,
    required this.borderColor,
    required this.buttonTextWeight,
    required this.buttonTextFamily,
  });

  VoidCallback onPressed;
  String buttonText;
  double containerHeight;
  double containerWidth;
  double borderRadiusSize;
  double buttonTextSize;
  Color buttonTextColor;
  Color buttonColor;
  Color borderColor;
  FontWeight buttonTextWeight;
  String buttonTextFamily;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(containerHeight),
      width: getProportionateScreenWidth(containerWidth),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: buttonColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadiusSize),
                side: BorderSide(color: borderColor))),
        child: Text(
          buttonText,
          style: TextStyle(
            color: buttonTextColor,
            fontSize: getProportionateScreenWidth(buttonTextSize),
            fontWeight: buttonTextWeight,
            fontFamily: buttonTextFamily,
          ),
        ),
      ),
    );
  }
}

class BuildCustomButton extends StatelessWidget {
  BuildCustomButton(
      {required this.onPressed,
      required this.containerHeight,
      required this.containerWidth,
      required this.borderRadiusSize,
      required this.buttonColor,
      this.borderColor,
      required this.buttonChild});

  void Function()? onPressed;
  Widget buttonChild;
  double containerHeight;
  double containerWidth;
  double borderRadiusSize;
  Color buttonColor;
  Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(containerHeight),
      width: getProportionateScreenWidth(containerWidth),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadiusSize),
          color: buttonColor),
      child: Center(child: buttonChild),
    );
  }
}
