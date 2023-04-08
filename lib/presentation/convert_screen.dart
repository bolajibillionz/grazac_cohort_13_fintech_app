import 'package:ch13_fintech_app/core/reuseables/general_text.dart';
import 'package:ch13_fintech_app/presentation/balance_screen.dart';
import 'package:flutter/material.dart';

import '../core/constants.dart';
import '../core/size_config.dart';
import 'add_new_card.dart';

class ConvertScreen extends StatefulWidget {
  const ConvertScreen({super.key});

  @override
  State<ConvertScreen> createState() => _ConvertScreenState();
}

class _ConvertScreenState extends State<ConvertScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Palette.primaryBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: getProportionateScreenWidth(41),
              right: getProportionateScreenWidth(41),
              top: getProportionateScreenHeight(58)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: getProportionateScreenHeight(47),
                    width: getProportionateScreenWidth(47),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Palette.primaryColor2),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon:
                            Icon(Icons.arrow_back, color: Palette.iconColor1)),
                  ),
                  Container(
                    height: getProportionateScreenHeight(47),
                    width: getProportionateScreenWidth(47),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Palette.primaryColor2,
                    ),
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.more_horiz)),
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(7),
              ),
              createGeneralText(
                  inputText: 'Convert',
                  fontSize: 48,
                  family: FontFamily.gilroyBold,
                  weight: FontWeight.normal,
                  colorName: Palette.primaryTextColor1),
              SizedBox(
                height: getProportionateScreenHeight(15),
              ),
              RichText(
                text: TextSpan(
                    text: 'You have',
                    style: TextStyle(
                        color: Palette.primaryTextColor1,
                        fontFamily: FontFamily.inter,
                        fontSize: 17,
                        fontWeight: FontWeight.w400),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' 4930 EUR',
                        style: TextStyle(
                            color: Palette.primaryTextColor1,
                            fontFamily: FontFamily.inter,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      TextSpan(
                        text: ' in your balance',
                        style: TextStyle(
                            color: Palette.primaryTextColor1,
                            fontFamily: FontFamily.inter,
                            fontWeight: FontWeight.w400,
                            fontSize: 17),
                      ),
                    ]),
              ),
              SizedBox(
                height: getProportionateScreenHeight(33),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: getProportionateScreenHeight(134),
                    width: getProportionateScreenWidth(127),
                    decoration: BoxDecoration(
                      color: Palette.primaryColor2,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(17),
                  ),
                  Center(
                      child: Icon(Icons.arrow_back, color: Palette.iconColor1)),
                  SizedBox(
                    width: getProportionateScreenWidth(17),
                  ),
                  Container(
                    height: getProportionateScreenHeight(134),
                    width: getProportionateScreenWidth(127),
                    decoration: BoxDecoration(
                      color: Palette.primaryColor2,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(26),
              ),
              Container(
                height: getProportionateScreenHeight(95),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Palette.primaryColor1,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                          color: Palette.primaryColor1,
                          spreadRadius: 0,
                          blurRadius: 8,
                          offset: Offset(0, 3),
                          blurStyle: BlurStyle.normal),
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    createGeneralText(
                        inputText: '1 USD  = 0,80 EUR',
                        fontSize: 30,
                        family: FontFamily.noto,
                        weight: FontWeight.w400,
                        colorName: Palette.primaryColor2),
                    createGeneralText(
                        inputText: '- 0.22 past month',
                        fontSize: 15,
                        family: FontFamily.inter,
                        weight: FontWeight.w700,
                        colorName: Palette.primaryColor2),
                  ],
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(55),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      createGeneralText(
                          inputText: 'Fee',
                          fontSize: 15,
                          family: FontFamily.inter,
                          weight: FontWeight.w600,
                          colorName: Palette.primaryTextColor1),
                      SizedBox(height: getProportionateScreenHeight(15)),
                      createGeneralText(
                          inputText: 'Amount converted',
                          fontSize: 15,
                          family: FontFamily.inter,
                          weight: FontWeight.w600,
                          colorName: Palette.primaryTextColor1),
                      SizedBox(height: getProportionateScreenHeight(15)),
                      createGeneralText(
                          inputText: 'Rate',
                          fontSize: 15,
                          family: FontFamily.inter,
                          weight: FontWeight.w600,
                          colorName: Palette.primaryTextColor1),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      createGeneralText(
                          inputText: '1.14 EUR',
                          fontSize: 14,
                          family: FontFamily.inter,
                          weight: FontWeight.w600,
                          colorName: Palette.primaryTextColor1),
                      SizedBox(height: getProportionateScreenHeight(15)),
                      createGeneralText(
                          inputText: '276.86 EUR',
                          fontSize: 14,
                          family: FontFamily.inter,
                          weight: FontWeight.w600,
                          colorName: Palette.primaryTextColor1),
                      SizedBox(height: getProportionateScreenHeight(15)),
                      createGeneralText(
                          inputText: '0.22',
                          fontSize: 15,
                          family: FontFamily.inter,
                          weight: FontWeight.w600,
                          colorName: Palette.primaryTextColor1),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(138),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BalanceScreen()));
                },
                child: Container(
                  padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(130),
                      // top: getProportionateScreenHeight(16),
                      right: getProportionateScreenWidth(10)),
                  height: getProportionateScreenHeight(73),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Palette.primaryColor1,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Palette.primaryColor1,
                          spreadRadius: 0,
                          blurRadius: 8,
                          offset: Offset(0, 3),
                        ),
                      ]),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      createGeneralText(
                          inputText: 'Continue',
                          fontSize: 18,
                          family: FontFamily.inter,
                          weight: FontWeight.w500,
                          colorName: Palette.primaryColor2),
                      SizedBox(
                        height: getProportionateScreenHeight(2),
                      ),
                      Container(
                        height: getProportionateScreenHeight(42.37),
                        width: getProportionateScreenWidth(44),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Palette.primaryColor2,
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BalanceScreen()
                                    // AddNewCard()
                                    ));
                          },
                          icon: Center(
                            child: Icon(Icons.arrow_forward,
                                color: Palette.primaryColor1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(60),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
