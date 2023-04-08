import 'package:ch13_fintech_app/presentation/transfer_screen.dart';
import 'package:flutter/material.dart';

import '../core/constants.dart';
import '../core/reuseables/general_text.dart';
import '../core/size_config.dart';

class BalanceScreen extends StatefulWidget {
  const BalanceScreen({super.key});

  @override
  State<BalanceScreen> createState() => _BalanceScreenState();
}

class _BalanceScreenState extends State<BalanceScreen> {
  List<User> users = [
    User(
        username: 'Bonnie Riley',
        account: 'EUR ACCOUNT',
        image: 'images/1.png'),
    User(
        username: 'Aileen Shin', account: 'USD ACCOUNT', image: 'images/2.png'),
    User(
        username: 'Angelina Winn',
        account: 'BDT ACCOUNT',
        image: 'images/3.png'),
    User(
        username: 'Mark Spencer',
        account: 'USD ACCOUNT',
        image: 'images/4.png'),
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
        backgroundColor: Palette.primaryBackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: getProportionateScreenHeight(17),
                  left: getProportionateScreenWidth(20),
                  right: getProportionateScreenWidth(20),
                ),
                child: Container(
                  padding: EdgeInsets.only(
                      top: getProportionateScreenHeight(41),
                      left: getProportionateScreenWidth(22),
                      right: getProportionateScreenWidth(22)),
                  height: getProportionateScreenHeight(431),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Palette.primaryContainerColor,
                      borderRadius: BorderRadius.circular(25)),
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
                                icon: Icon(Icons.arrow_back,
                                    color: Palette.iconColor1)),
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
                        height: getProportionateScreenHeight(32),
                      ),
                      createGeneralText(
                          inputText: 'Balances',
                          fontSize: 42,
                          family: FontFamily.gilroyBold,
                          weight: FontWeight.normal,
                          colorName: Palette.primaryTextColor1),
                      SizedBox(
                        height: getProportionateScreenHeight(42),
                      ),
                      Container(
                        height: getProportionateScreenHeight(140),
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: getProportionateScreenWidth(20),
                                      top: getProportionateScreenHeight(17)),
                                  width: getProportionateScreenWidth(129),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(19),
                                      color: Palette.primaryColor2),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height:
                                            getProportionateScreenHeight(47),
                                        width: getProportionateScreenWidth(47),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Palette.primaryBackgroundColor
                                              .withOpacity(0.2),
                                        ),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.euro,
                                              color: Colors.blue,
                                            )),
                                      ),
                                      SizedBox(
                                        height:
                                            getProportionateScreenHeight(16),
                                      ),
                                      createGeneralText(
                                          inputText: '585.00',
                                          fontSize: 19,
                                          family: FontFamily.gilroyBold,
                                          weight: FontWeight.normal,
                                          colorName: Palette.primaryTextColor1),
                                      createGeneralText(
                                          inputText: 'Euro Balance',
                                          fontSize: 12,
                                          family: FontFamily.gilroyBold,
                                          weight: FontWeight.normal,
                                          colorName: Palette.primaryTextColor5),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: getProportionateScreenWidth(20),
                                      top: getProportionateScreenHeight(17)),
                                  width: getProportionateScreenWidth(129),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Palette.primaryColor2),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height:
                                            getProportionateScreenHeight(47),
                                        width: getProportionateScreenWidth(47),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Palette.primaryBackgroundColor
                                              .withOpacity(0.2),
                                        ),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.euro,
                                              color: Colors.blue,
                                            )),
                                      ),
                                      SizedBox(
                                        height:
                                            getProportionateScreenHeight(16),
                                      ),
                                      createGeneralText(
                                          inputText: '654.00',
                                          fontSize: 19,
                                          family: FontFamily.gilroyBold,
                                          weight: FontWeight.normal,
                                          colorName: Palette.primaryTextColor1),
                                      createGeneralText(
                                          inputText: 'USD Balance',
                                          fontSize: 12,
                                          family: FontFamily.gilroyBold,
                                          weight: FontWeight.normal,
                                          colorName: Palette.primaryTextColor5),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: getProportionateScreenWidth(20),
                                      top: getProportionateScreenHeight(17)),
                                  width: getProportionateScreenWidth(129),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Palette.primaryColor2),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height:
                                            getProportionateScreenHeight(47),
                                        width: getProportionateScreenWidth(47),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Palette.primaryBackgroundColor
                                              .withOpacity(0.2),
                                        ),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.euro,
                                              color: Colors.blue,
                                            )),
                                      ),
                                      SizedBox(
                                        height:
                                            getProportionateScreenHeight(16),
                                      ),
                                      createGeneralText(
                                          inputText: '585.00',
                                          fontSize: 19,
                                          family: FontFamily.gilroyBold,
                                          weight: FontWeight.normal,
                                          colorName: Palette.primaryTextColor1),
                                      createGeneralText(
                                          inputText: 'GBP Balance',
                                          fontSize: 12,
                                          family: FontFamily.gilroyBold,
                                          weight: FontWeight.normal,
                                          colorName: Palette.primaryTextColor5),
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                      ),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TransferScreen()));
                          },
                          child: createGeneralText(
                              inputText: 'See Balance Details',
                              fontSize: 18,
                              family: FontFamily.inter,
                              weight: FontWeight.w600,
                              colorName: Palette.primaryColor1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class User {
  final String username;
  final String account;
  final String image;

  const User({
    required this.username,
    required this.account,
    required this.image,
  });
}
