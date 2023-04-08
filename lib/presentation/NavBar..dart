import 'package:ch13_fintech_app/core/constants.dart';
import 'package:ch13_fintech_app/core/reuseables/general_text.dart';
import 'package:ch13_fintech_app/core/size_config.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(left: 41),
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Palette.primaryColor2,
                child: ClipOval(
                  child: Image.asset(
                    'images/Rectangle 39.png',
                    height: getProportionateScreenHeight(65),
                    width: getProportionateScreenWidth(68),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Palette.primaryColor2),
              accountName: createGeneralText(
                  inputText: 'Domhnall Gleeson',
                  fontSize: 26,
                  family: FontFamily.gilroy,
                  weight: FontWeight.bold,
                  colorName: Palette.textColor),
              accountEmail: createGeneralText(
                  inputText: 'United States',
                  fontSize: 16,
                  family: FontFamily.gilroy,
                  weight: FontWeight.bold,
                  colorName: Palette.textColor),
            ),
            SizedBox(
              height: getProportionateScreenHeight(71),
            ),
            ListTile(
              title: createGeneralText(
                  inputText: 'Profile',
                  fontSize: 18,
                  family: FontFamily.clashVariable,
                  weight: FontWeight.normal,
                  colorName: Palette.usdColor),
            ),
            SizedBox(
              height: getProportionateScreenHeight(41),
            ),
            ListTile(
              title: createGeneralText(
                  inputText: 'My Accounts',
                  fontSize: 18,
                  family: FontFamily.clashVariable,
                  weight: FontWeight.normal,
                  colorName: Palette.usdColor),
            ),
            SizedBox(
              height: getProportionateScreenHeight(41),
            ),
            ListTile(
              title: createGeneralText(
                  inputText: 'History',
                  fontSize: 18,
                  family: FontFamily.clashVariable,
                  weight: FontWeight.normal,
                  colorName: Palette.usdColor),
            ),
            SizedBox(
              height: getProportionateScreenHeight(41),
            ),
            ListTile(
              title: createGeneralText(
                  inputText: 'Debit Card',
                  fontSize: 18,
                  family: FontFamily.clashVariable,
                  weight: FontWeight.normal,
                  colorName: Palette.usdColor),
            ),
            SizedBox(
              height: getProportionateScreenHeight(41),
            ),
            ListTile(
              title: createGeneralText(
                  inputText: 'Settings',
                  fontSize: 18,
                  family: FontFamily.clashVariable,
                  weight: FontWeight.normal,
                  colorName: Palette.usdColor),
            ),
            SizedBox(
              height: getProportionateScreenHeight(200),
            ),
            Row(
              children: [
                createGeneralText(
                    inputText: 'LOGOUT',
                    fontSize: 16,
                    family: FontFamily.clashVariable,
                    weight: FontWeight.w700,
                    colorName: Palette.primaryColor1),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_forward_outlined)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
