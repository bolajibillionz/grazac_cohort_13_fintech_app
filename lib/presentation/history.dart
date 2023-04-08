import 'package:flutter/material.dart';
import 'package:ch13_fintech_app/presentation/bank.dart';
import 'package:ch13_fintech_app/presentation/transaction.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import '../core/constants.dart';
import '../core/reuseables/general_button.dart';
import '../core/reuseables/general_text.dart';
import '../core/size_config.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
        backgroundColor: Palette.primaryColor3,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
          padding: EdgeInsets.only(
              left: getProportionateScreenWidth(41),
              right: getProportionateScreenWidth(41),
              top: getProportionateScreenHeight(17)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back),
                  color: Palette.primaryIconsColor1,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_horiz_outlined),
                  color: Palette.primaryIconsColor1,
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(27),
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Palette.Container3Color,
                  ),
                  height: getProportionateScreenHeight(88),
                  width: getProportionateScreenWidth(162),
                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(
                          width: getProportionateScreenWidth(10),
                        ),
                        Icon(
                          Icons.north,
                          color: Palette.primaryColor2,
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(23),
                        ),
                        Center(
                          child: Column(
                            children: [
                              createGeneralText(
                                  inputText: 'Expense',
                                  fontSize: 14,
                                  family: FontFamily.clashVariable,
                                  weight: FontWeight.w500,
                                  colorName: Palette.primaryColor2),
                              SizedBox(
                                height: getProportionateScreenHeight(1),
                              ),
                              createGeneralText(
                                  inputText: '2,500',
                                  fontSize: 24,
                                  family: FontFamily.clashVariable,
                                  weight: FontWeight.w600,
                                  colorName: Palette.primaryColor2)
                            ],
                          ),
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(10),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(9),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Palette.Container3Color,
                  ),
                  height: getProportionateScreenHeight(88),
                  width: getProportionateScreenWidth(162),
                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(
                          width: getProportionateScreenWidth(10),
                        ),
                        Icon(
                          Icons.north,
                          color: Palette.primaryColor2,
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(23),
                        ),
                        Center(
                          child: Column(
                            children: [
                              createGeneralText(
                                  inputText: 'Income',
                                  fontSize: 14,
                                  family: FontFamily.clashVariable,
                                  weight: FontWeight.w500,
                                  colorName: Palette.primaryColor2),
                              SizedBox(
                                height: getProportionateScreenHeight(1),
                              ),
                              createGeneralText(
                                  inputText: '42,500',
                                  fontSize: 24,
                                  family: FontFamily.clashVariable,
                                  weight: FontWeight.w600,
                                  colorName: Palette.primaryColor2)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(41),
            ),
            Row(
              children: [
                ListView.builder(
                    itemCount: 6,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      Container(
                        height: getProportionateScreenHeight(157),
                        width: getProportionateScreenWidth(138),
                        decoration: BoxDecoration(
                            color: Palette.primaryContainerColor2,
                            borderRadius: BorderRadius.circular(10)),
                      );
                    })
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(323),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                createGeneralText(
                    inputText: 'Monthly',
                    fontSize: 12,
                    family: FontFamily.clashVariable,
                    weight: FontWeight.w500,
                    colorName: Palette.primaryIconsColor1),
                createGeneralText(
                    inputText: 'Week',
                    fontSize: 12,
                    family: FontFamily.clashVariable,
                    weight: FontWeight.w500,
                    colorName: Palette.primaryIconsColor1),
                createGeneralText(
                    inputText: 'Daily',
                    fontSize: 12,
                    family: FontFamily.clashVariable,
                    weight: FontWeight.w500,
                    colorName: Palette.primaryIconsColor1)
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(27),
            ),
            Center(
              child: Container(
                child: Center(
                  child: createGeneralText(
                      inputText: '120',
                      fontSize: 15,
                      family: FontFamily.clashVariable,
                      weight: FontWeight.w600,
                      colorName: Palette.primaryIconsColor1),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Palette.Container3Color,
                ),
                height: getProportionateScreenHeight(36),
                width: getProportionateScreenWidth(83),
              ),
            ),
          ]),
        ))));
  }
}

List<Map<String, String>> activities = [
  {
    'image': 'images/British.png',
    'text': '121k',
  },
  {
    'image': 'images/Us.png',
    'text': "352k",
  },
  {
    'image': 'images/Euro.png',
    'text': '18',
  }
];
