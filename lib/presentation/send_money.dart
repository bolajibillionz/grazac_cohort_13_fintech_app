import 'package:flutter/material.dart';
import 'package:ch13_fintech_app/core/constants.dart';
import 'package:flutter/material.dart';

import '../core/reuseables/general_button.dart';
import '../core/reuseables/general_text.dart';
import '../core/size_config.dart';
import 'edit_profile.dart';

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(39.0),
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
                            Icon(Icons.keyboard_arrow_down),
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
                            colorName: Palette.primaryTextColor1),
                        SizedBox(
                          height: getProportionateScreenHeight(8),
                        ),
                        // ListView(
                        //   children: [
                        //     Row(
                        //       children: [
                        //         Image.asset(
                        //           'images/Rectangle 38.png',
                        //           height: getProportionateScreenHeight(54),
                        //           width: getProportionateScreenWidth(54),
                        //         ),
                        //         Image.asset(
                        //           'images/Rectangle 37.png',
                        //           height: getProportionateScreenHeight(54),
                        //           width: getProportionateScreenWidth(54),
                        //         ),
                        //         Image.asset(
                        //           'images/Rectangle 36.png',
                        //           height: getProportionateScreenHeight(54),
                        //           width: getProportionateScreenWidth(54),
                        //         ),
                        //         Image.asset(
                        //           'images/Rectangle 34.png',
                        //           height: getProportionateScreenHeight(54),
                        //           width: getProportionateScreenWidth(54),
                        //         ),
                        //         Image.asset(
                        //           'images/Rectangle 39.png',
                        //           height: getProportionateScreenHeight(54),
                        //           width: getProportionateScreenWidth(54),
                        //         ),
                        //       ],
                        //     ),
                        //   ],
                        //   scrollDirection: Axis.horizontal,
                        // ),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: getProportionateScreenHeight(56),
                      width: getProportionateScreenWidth(162),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Palette.primaryColor1,
                              ),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ))),
                          onPressed: (() {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext) => EditProfile()));
                          }),
                          child: Text(
                            'Transfer',
                            style: TextStyle(
                              color: Palette.primaryColor2,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              fontFamily: FontFamily.clashVariable,
                            ),
                          )),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(8),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(56),
                      width: getProportionateScreenWidth(162),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Palette.primaryColor2),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ))),
                          onPressed: (() {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext) => EditProfile()));
                          }),
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              color: Palette.primaryTextColor1,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              fontFamily: FontFamily.clashVariable,
                            ),
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
