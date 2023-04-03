import 'package:ch13_fintech_app/presentation/transaction.dart';
import 'package:flutter/material.dart';

import '../core/constants.dart';
import '../core/reuseables/general_button.dart';
import '../core/reuseables/general_text.dart';
import '../core/size_config.dart';

class Transaction extends StatefulWidget {
  const Transaction({super.key});

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.primaryColor3,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsets.only(
                        left: getProportionateScreenWidth(19),
                        right: getProportionateScreenWidth(19),
                        top: getProportionateScreenHeight(17)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 22, right: 22),
                            height: getProportionateScreenHeight(304),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Palette.primaryContainerColor,
                                borderRadius: BorderRadius.circular(25)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: getProportionateScreenHeight(41),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: getProportionateScreenHeight(47),
                                      width: getProportionateScreenWidth(47),
                                      decoration: BoxDecoration(
                                          color: Palette.primaryColor2,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Icon(
                                        Icons.arrow_back,
                                        color: Palette.primaryIconsColor1,
                                      ),
                                    ),
                                    Container(
                                      height: getProportionateScreenHeight(47),
                                      width: getProportionateScreenWidth(47),
                                      decoration: BoxDecoration(
                                          color: Palette.primaryColor2,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Icon(
                                        Icons.more_horiz,
                                        color: Palette.primaryIconsColor1,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: getProportionateScreenHeight(41),
                                ),
                                createGeneralText(
                                    inputText: 'USD BALANCE AVAILABLE',
                                    fontSize: 16,
                                    family: FontFamily.clashVariable,
                                    weight: FontWeight.w500,
                                    colorName: Palette.primaryTextColor1),
                                SizedBox(
                                  height: getProportionateScreenHeight(2),
                                ),
                                createGeneralText(
                                    inputText: '\$2,52,00.00',
                                    fontSize: 46,
                                    family: FontFamily.clashVariable2,
                                    weight: FontWeight.bold,
                                    colorName: Palette.primaryTextColor1),
                                SizedBox(
                                  height: getProportionateScreenHeight(40),
                                ),
                                createGeneralText(
                                    inputText: 'See Bank Details',
                                    fontSize: 18,
                                    family: FontFamily.clashVariable2,
                                    weight: FontWeight.w600,
                                    colorName: Palette.textColor2)
                              ],
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(22),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 22, right: 22),
                            height: getProportionateScreenHeight(73),
                            width: getProportionateScreenWidth(332),
                            decoration: BoxDecoration(
                                color: Palette.primaryContainerColor,
                                borderRadius: BorderRadius.circular(8)),
                            child: Row(
                              children: [
                                createGeneralText(
                                    inputText: 'Transaction Details',
                                    fontSize: 18,
                                    family: FontFamily.clashVariable2,
                                    weight: FontWeight.w500,
                                    colorName: Palette.primaryTextColor1),
                                SizedBox(
                                  width: getProportionateScreenWidth(90),
                                ),
                                Container(
                                  height: getProportionateScreenHeight(42),
                                  width: getProportionateScreenWidth(44),
                                  decoration: BoxDecoration(
                                      color: Palette.primaryColor1,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: Palette.primaryIconsColor1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ])))));
  }
}
