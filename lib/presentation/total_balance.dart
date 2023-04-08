import 'package:ch13_fintech_app/core/reuseables/general_text.dart';
import 'package:ch13_fintech_app/core/size_config.dart';
import 'package:ch13_fintech_app/presentation/convert_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../core/constants.dart';

class TotalBalance extends StatefulWidget {
  const TotalBalance({super.key});

  @override
  State<TotalBalance> createState() => _TotalBalanceState();
}

class _TotalBalanceState extends State<TotalBalance> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Palette.primaryBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: getProportionateScreenHeight(58),
            right: getProportionateScreenWidth(41),
            left: getProportionateScreenWidth(41),
          ),
          child: Column(
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
                height: getProportionateScreenHeight(26),
              ),
              createGeneralText(
                  inputText: 'Total Balance',
                  fontSize: 18,
                  family: FontFamily.inter,
                  weight: FontWeight.w500,
                  colorName: Palette.primaryTextColor1),
              createGeneralText(
                  inputText: '\$225,600',
                  fontSize: 52,
                  family: FontFamily.gilroyBold,
                  weight: FontWeight.bold,
                  colorName: Palette.primaryTextColor1),
              SizedBox(
                height: getProportionateScreenHeight(38),
              ),
              Container(
                height: getProportionateScreenHeight(465),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Palette.primaryContainerColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [],
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(38),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: getProportionateScreenWidth(28),
                    top: getProportionateScreenHeight(16),
                    right: getProportionateScreenWidth(14)),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        createGeneralText(
                            inputText: 'Easy Payment',
                            fontSize: 18,
                            family: FontFamily.inter,
                            weight: FontWeight.w500,
                            colorName: Palette.primaryColor2),
                        SizedBox(
                          height: getProportionateScreenHeight(2),
                        ),
                        createGeneralText(
                            inputText: 'Check out new features',
                            fontSize: 14,
                            family: FontFamily.inter,
                            weight: FontWeight.w500,
                            colorName: Palette.primaryTextColor4),
                      ],
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
                                  builder: (context) => ConvertScreen()));
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
              SizedBox(
                height: getProportionateScreenHeight(65),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
