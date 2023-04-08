import 'package:ch13_fintech_app/presentation/transaction.dart';
import 'package:flutter/material.dart';

import '../core/constants.dart';
import '../core/reuseables/general_button.dart';
import '../core/reuseables/general_text.dart';
import '../core/size_config.dart';

class Bank extends StatefulWidget {
  const Bank({super.key});

  @override
  State<Bank> createState() => _BankState();
}

class _BankState extends State<Bank> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
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
                      height: getProportionateScreenHeight(330),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: getProportionateScreenHeight(47),
                                width: getProportionateScreenWidth(47),
                                decoration: BoxDecoration(
                                    color: Palette.primaryColor2,
                                    borderRadius: BorderRadius.circular(15)),
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
                                    borderRadius: BorderRadius.circular(15)),
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
                              inputText: 'Bank USA',
                              fontSize: 52,
                              family: FontFamily.gilroy,
                              weight: FontWeight.bold,
                              colorName: Palette.primaryTextColor1),
                          SizedBox(
                            height: getProportionateScreenHeight(17),
                          ),
                          createGeneralText(
                              inputText: 'Your BDT account',
                              fontSize: 18,
                              family: FontFamily.clashVariable,
                              weight: FontWeight.bold,
                              colorName: Palette.primaryTextColor1),
                          SizedBox(
                            height: getProportionateScreenHeight(20),
                          ),
                          createGeneralText(
                              inputText: 'Receipient type : Private',
                              fontSize: 18,
                              family: FontFamily.clashVariable,
                              weight: FontWeight.bold,
                              colorName: Palette.primaryTextColor1),
                          SizedBox(
                            height: getProportionateScreenHeight(17),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(22),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 41),
                      child: Row(
                        children: [
                          Container(
                            height: getProportionateScreenHeight(52),
                            width: getProportionateScreenWidth(54),
                            decoration: BoxDecoration(
                                color: Palette.primaryColor2,
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.person_2_outlined,
                              color: Palette.primaryTextColor1,
                            ),
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(16),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              createGeneralText(
                                  inputText: 'Account holder',
                                  fontSize: 14,
                                  family: FontFamily.clashVariable,
                                  weight: FontWeight.w600,
                                  colorName: Palette.primaryTextColor1),
                              SizedBox(
                                height: getProportionateScreenHeight(4),
                              ),
                              createGeneralText(
                                  inputText: 'Domhnall Gleeson',
                                  fontSize: 14,
                                  family: FontFamily.clashVariable,
                                  weight: FontWeight.w600,
                                  colorName: Palette.primaryTextColor1),
                              SizedBox(
                                height: getProportionateScreenHeight(33),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 41),
                      child: Row(
                        children: [
                          Container(
                            height: getProportionateScreenHeight(52),
                            width: getProportionateScreenWidth(54),
                            decoration: BoxDecoration(
                                color: Palette.primaryColor2,
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.house,
                              color: Palette.primaryTextColor1,
                            ),
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(16),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              createGeneralText(
                                  inputText: 'Bank Name',
                                  fontSize: 14,
                                  family: FontFamily.clashVariable,
                                  weight: FontWeight.w600,
                                  colorName: Palette.primaryTextColor1),
                              SizedBox(
                                height: getProportionateScreenHeight(4),
                              ),
                              createGeneralText(
                                  inputText: 'Bank USA',
                                  fontSize: 14,
                                  family: FontFamily.clashVariable,
                                  weight: FontWeight.w600,
                                  colorName: Palette.primaryTextColor1),
                              SizedBox(
                                height: getProportionateScreenHeight(33),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 41),
                      child: Row(
                        children: [
                          Container(
                            height: getProportionateScreenHeight(52),
                            width: getProportionateScreenWidth(54),
                            decoration: BoxDecoration(
                                color: Palette.primaryColor2,
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.email_outlined,
                              color: Palette.primaryTextColor1,
                            ),
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(16),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              createGeneralText(
                                  inputText: 'Email address',
                                  fontSize: 14,
                                  family: FontFamily.clashVariable,
                                  weight: FontWeight.w600,
                                  colorName: Palette.primaryTextColor1),
                              SizedBox(
                                height: getProportionateScreenHeight(4),
                              ),
                              createGeneralText(
                                  inputText: 'michael.moore@mail.com',
                                  fontSize: 14,
                                  family: FontFamily.clashVariable,
                                  weight: FontWeight.w600,
                                  colorName: Palette.primaryTextColor1),
                              SizedBox(
                                height: getProportionateScreenHeight(33),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 41),
                      child: Row(
                        children: [
                          Container(
                            height: getProportionateScreenHeight(52),
                            width: getProportionateScreenWidth(54),
                            decoration: BoxDecoration(
                                color: Palette.primaryColor2,
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.location_on_sharp,
                              color: Palette.primaryTextColor1,
                            ),
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(16),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              createGeneralText(
                                  inputText: 'Address',
                                  fontSize: 14,
                                  family: FontFamily.clashVariable,
                                  weight: FontWeight.w600,
                                  colorName: Palette.primaryTextColor1),
                              SizedBox(
                                height: getProportionateScreenHeight(4),
                              ),
                              createGeneralText(
                                  inputText: '123 Street/NYC',
                                  fontSize: 14,
                                  family: FontFamily.clashVariable,
                                  weight: FontWeight.w600,
                                  colorName: Palette.primaryTextColor1),
                              SizedBox(
                                height: getProportionateScreenHeight(33),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 41),
                      child: Row(
                        children: [
                          Container(
                            height: getProportionateScreenHeight(52),
                            width: getProportionateScreenWidth(54),
                            decoration: BoxDecoration(
                                color: Palette.primaryColor2,
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.code_off_sharp,
                              color: Palette.primaryTextColor1,
                            ),
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(16),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              createGeneralText(
                                  inputText: 'Bank Code',
                                  fontSize: 14,
                                  family: FontFamily.clashVariable,
                                  weight: FontWeight.w600,
                                  colorName: Palette.primaryTextColor1),
                              SizedBox(
                                height: getProportionateScreenHeight(4),
                              ),
                              createGeneralText(
                                  inputText: '123 56366 4456 ',
                                  fontSize: 14,
                                  family: FontFamily.clashVariable,
                                  weight: FontWeight.w600,
                                  colorName: Palette.primaryTextColor1),
                              SizedBox(
                                height: getProportionateScreenHeight(33),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 41),
                      child: Row(
                        children: [
                          Container(
                            height: getProportionateScreenHeight(52),
                            width: getProportionateScreenWidth(54),
                            decoration: BoxDecoration(
                                color: Palette.primaryColor2,
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.attach_money,
                              color: Palette.primaryTextColor1,
                            ),
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(16),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              createGeneralText(
                                  inputText: 'Account Number',
                                  fontSize: 14,
                                  family: FontFamily.clashVariable,
                                  weight: FontWeight.w600,
                                  colorName: Palette.primaryTextColor1),
                              SizedBox(
                                height: getProportionateScreenHeight(4),
                              ),
                              createGeneralText(
                                  inputText: '0987178989',
                                  fontSize: 14,
                                  family: FontFamily.clashVariable,
                                  weight: FontWeight.w600,
                                  colorName: Palette.primaryTextColor1),
                              SizedBox(
                                height: getProportionateScreenHeight(4),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ])),
        ),
      ),
    );
  }
}
