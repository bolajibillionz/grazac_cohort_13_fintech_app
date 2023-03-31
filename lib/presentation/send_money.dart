import 'package:flutter/material.dart';
import 'package:ch13_fintech_app/core/constants.dart';
import 'package:flutter/material.dart';

import '../core/reuseables/general_button.dart';
import '../core/reuseables/general_text.dart';
import '../core/size_config.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({super.key});

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Palette.primaryColor3,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(70),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BuildCustomButton(
                  borderRadiusSize: 15,
                  buttonChild: Icon(
                    Icons.menu,
                    color: Palette.primaryIconsColor1,
                  ),
                  buttonColor: Palette.primaryColor2,
                  containerHeight: 47,
                  onPressed: () {},
                  containerWidth: 47,
                ),
                BuildCustomButton(
                  borderRadiusSize: 15,
                  buttonChild: Icon(
                    Icons.more_horiz,
                    color: Palette.primaryIconsColor1,
                  ),
                  buttonColor: Palette.primaryColor2,
                  containerHeight: 47,
                  onPressed: () {},
                  containerWidth: 47,
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(19),
            ),
            Row(
              children: [
                BuildCustomButton(
                  borderRadiusSize: 8,
                  buttonChild: createGeneralText(
                    inputText: 'Local',
                    weight: FontWeight.w500,
                    fontSize: 16,
                    colorName: Palette.primaryTextColor1,
                    family: FontFamily.clashVariable,
                  ),
                  buttonColor: Palette.primaryColor2,
                  containerHeight: 44,
                  onPressed: () {},
                  containerWidth: 162,
                ),
                SizedBox(
                  width: getProportionateScreenWidth(8),
                ),
                BuildCustomButton(
                  borderRadiusSize: 8,
                  buttonChild: createGeneralText(
                    inputText: 'International',
                    weight: FontWeight.w500,
                    fontSize: 16,
                    colorName: Palette.primaryColor2,
                    family: FontFamily.clashVariable,
                  ),
                  buttonColor: Palette.primaryColor1,
                  containerHeight: 44,
                  onPressed: () {},
                  containerWidth: 162,
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(59),
            ),
            BuildCustomButton(
              borderRadiusSize: 10,
              buttonChild: Padding(
                padding: EdgeInsets.only(
                    left: getProportionateScreenWidth(50),
                    right: getProportionateScreenWidth(50)),
                child: Column(
                  children: [
                    SizedBox(
                      height: getProportionateScreenHeight(38),
                    ),
                    createGeneralText(
                      inputText: 'YOU ARE SENDING',
                      weight: FontWeight.w500,
                      fontSize: 16,
                      colorName: Palette.primaryTextColor1,
                      family: FontFamily.clashVariable,
                    ),
                    createGeneralText(
                      inputText: '\$200.00',
                      weight: FontWeight.w600,
                      fontSize: 60,
                      colorName: Palette.primaryTextColor1,
                      family: FontFamily.gilroy,
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(3),
                    ),
                    Divider(
                      thickness: 2,
                      color: Palette.deviderColor,
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        createGeneralText(
                            inputText: 'USD',
                            fontSize: 18,
                            family: FontFamily.clashVariable,
                            weight: FontWeight.w700,
                            colorName: Palette.usdColor),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      color: Palette.deviderColor,
                    ),
                  ],
                ),
              ),
              buttonColor: Palette.primaryColor2,
              containerHeight: 243,
              onPressed: () {},
              containerWidth: 332,
            ),
            SizedBox(
              height: getProportionateScreenHeight(17),
            ),
            BuildCustomButton(
                onPressed: () {},
                containerHeight: 136,
                containerWidth: 332,
                borderRadiusSize: 10,
                buttonColor: Palette.primaryContainerColor,
                buttonChild: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    createGeneralText(
                        inputText: 'Send to',
                        fontSize: 16,
                        family: FontFamily.clashVariable2,
                        weight: FontWeight.w600,
                        colorName: Palette.primaryTextColor1)
                  ],
                )),
            SizedBox(
              height: getProportionateScreenHeight(26),
            ),
            BuildCustomButton(
              borderRadiusSize: 0,
              buttonChild: createGeneralText(
                inputText: 'SHOULD BE DELIVERED BY',
                weight: FontWeight.w500,
                fontSize: 12,
                colorName: Palette.primaryTextColor1,
                family: FontFamily.clashVariable,
              ),
              buttonColor: Palette.primaryColor2,
              containerHeight: 44,
              onPressed: () {},
              containerWidth: 162,
            ),
            SizedBox(
              height: getProportionateScreenHeight(2),
            ),
            BuildCustomButton(
              borderRadiusSize: 0,
              buttonChild: createGeneralText(
                inputText: '27 APRIL 2020',
                weight: FontWeight.w700,
                fontSize: 22,
                colorName: Palette.primaryTextColor1,
                family: FontFamily.clashVariable,
              ),
              buttonColor: Palette.primaryColor2,
              containerHeight: 28,
              onPressed: () {},
              containerWidth: 159,
            ),
            SizedBox(
              height: getProportionateScreenHeight(66),
            ),
            Row(
              children: [
                BuildCustomButton(
                  borderRadiusSize: 8,
                  buttonChild: createGeneralText(
                    inputText: 'Transfer',
                    weight: FontWeight.w700,
                    fontSize: 18,
                    colorName: Palette.primaryColor2,
                    family: FontFamily.clashVariable,
                  ),
                  buttonColor: Palette.primaryColor1,
                  containerHeight: 56,
                  onPressed: () {},
                  containerWidth: 162,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(8),
                ),
                BuildCustomButton(
                  borderRadiusSize: 8,
                  buttonChild: createGeneralText(
                    inputText: 'Cancel',
                    weight: FontWeight.w700,
                    fontSize: 22,
                    colorName: Palette.usdColor,
                    family: FontFamily.clashVariable,
                  ),
                  buttonColor: Palette.primaryColor2,
                  containerHeight: 56,
                  onPressed: () {},
                  containerWidth: 162,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
