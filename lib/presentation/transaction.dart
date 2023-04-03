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
                    padding: EdgeInsets.all(19.0),
                    child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: getProportionateScreenHeight(17),
                          ),
                          Center(
                            child: Container(
                              padding: EdgeInsets.only(left: 22, right: 22),
                              height: getProportionateScreenHeight(304),
                              width: getProportionateScreenWidth(376),
                              decoration: BoxDecoration(
                                  color: Palette.primaryContainerColor,
                                  borderRadius: BorderRadius.circular(25)),
                              child: Row(
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
                            ),
                          ),
                        ])))));
  }
}
