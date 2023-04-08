import 'package:ch13_fintech_app/core/constants.dart';
import 'package:ch13_fintech_app/core/reuseables/general_text.dart';
import 'package:ch13_fintech_app/core/size_config.dart';
import 'package:ch13_fintech_app/presentation/total_balance.dart';
import 'package:flutter/material.dart';

class AccountDetailScreen extends StatefulWidget {
  const AccountDetailScreen({super.key});

  @override
  State<AccountDetailScreen> createState() => _AccountDetailScreenState();
}

class _AccountDetailScreenState extends State<AccountDetailScreen> {
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
      backgroundColor: Palette.primaryColor2,
      body: Padding(
        padding: EdgeInsets.only(
            left: getProportionateScreenWidth(19),
            top: getProportionateScreenHeight(17),
            right: getProportionateScreenWidth(19)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                left: getProportionateScreenWidth(22),
                right: getProportionateScreenWidth(22),
                top: getProportionateScreenHeight(41),
              ),
              height: getProportionateScreenHeight(317),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Palette.primaryContainerColor,
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                    height: getProportionateScreenHeight(22),
                  ),
                  createGeneralText(
                      inputText: 'Account Details',
                      fontSize: 42,
                      family: FontFamily.gilroyBold,
                      weight: FontWeight.normal,
                      colorName: Palette.primaryTextColor1),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  DefaultTabController(
                    length: 2,
                    child: Container(
                      height: getProportionateScreenHeight(73),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Palette.primaryColor2,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(11),
                            vertical: getProportionateScreenHeight(10)),
                        child: TabBar(
                            labelColor: Palette.primaryTextColor1,
                            unselectedLabelColor: Palette.primaryTextColor1,
                            indicator: BoxDecoration(
                              color: Palette.primaryContainerColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            tabs: [
                              Tab(text: 'Transfered'),
                              Tab(text: 'Received'),
                            ]),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TotalBalance()));
                    },
                    child: createGeneralText(
                        inputText: 'Share Details',
                        fontSize: 12,
                        family: FontFamily.inter,
                        weight: FontWeight.w600,
                        colorName: Palette.primaryTextColor2),
                  )
                ],
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(40)),
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionateScreenWidth(22),
                  right: getProportionateScreenWidth(22),
                  bottom: getProportionateScreenHeight(5)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          createGeneralText(
                              inputText: 'Account Holder',
                              fontSize: 14,
                              family: FontFamily.inter,
                              weight: FontWeight.w600,
                              colorName: Palette.primaryTextColor1),
                          createGeneralText(
                              inputText: 'Domhnall Gleeson',
                              fontSize: 14,
                              family: FontFamily.inter,
                              weight: FontWeight.w600,
                              colorName: Palette.primaryTextColor3),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          createGeneralText(
                              inputText: 'BIC',
                              fontSize: 14,
                              family: FontFamily.inter,
                              weight: FontWeight.w600,
                              colorName: Palette.primaryTextColor1),
                          createGeneralText(
                              inputText: 'DSFHIDFCANACS',
                              fontSize: 14,
                              family: FontFamily.inter,
                              weight: FontWeight.w600,
                              colorName: Palette.primaryTextColor3),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(51),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          createGeneralText(
                              inputText: 'IBAN',
                              fontSize: 14,
                              family: FontFamily.inter,
                              weight: FontWeight.w600,
                              colorName: Palette.primaryTextColor1),
                          createGeneralText(
                              inputText: '123 56366 4456 ',
                              fontSize: 14,
                              family: FontFamily.inter,
                              weight: FontWeight.w600,
                              colorName: Palette.primaryTextColor3),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          createGeneralText(
                              inputText: 'Address',
                              fontSize: 14,
                              family: FontFamily.inter,
                              weight: FontWeight.w600,
                              colorName: Palette.primaryTextColor1),
                          createGeneralText(
                              inputText: '123 Street/NYC',
                              fontSize: 14,
                              family: FontFamily.inter,
                              weight: FontWeight.w600,
                              colorName: Palette.primaryTextColor3),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(24),
                  ),
                  createGeneralText(
                      inputText: 'Recent transfers',
                      fontSize: 26,
                      family: FontFamily.gilroyBold,
                      weight: FontWeight.normal,
                      colorName: Palette.iconColor1),
                  SizedBox(
                    height: getProportionateScreenHeight(27),
                  ),
                  Container(
                    height: getProportionateScreenHeight(180),
                    child: ListView.builder(
                        //physics:ClampingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: users.length,
                        itemBuilder: (context, index) {
                          final User = users[index];
                          return ListTile(
                            leading: CircleAvatar(
                              radius: 28,
                              backgroundImage: AssetImage(User.image),
                            ),
                            title: Text(User.username),
                            subtitle: Text(User.account),
                            trailing: Text('data'),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
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
