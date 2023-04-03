import 'package:ch13_fintech_app/presentation/transaction.dart';
import 'package:flutter/material.dart';

import '../core/constants.dart';
import '../core/reuseables/general_button.dart';
import '../core/reuseables/general_text.dart';
import '../core/size_config.dart';

class Identity extends StatefulWidget {
  const Identity({super.key});

  @override
  State<Identity> createState() => _IdentityState();
}

class _IdentityState extends State<Identity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.primaryColor3,
        body: Padding(
          padding: EdgeInsets.all(45.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: getProportionateScreenHeight(70),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BuildCustomButton(
                  borderRadiusSize: 15,
                  buttonChild: Icon(
                    Icons.arrow_back,
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
              height: getProportionateScreenHeight(25),
            ),
            createGeneralText(
                inputText: 'Identity \nVerification',
                fontSize: 46,
                family: FontFamily.gilroy,
                weight: FontWeight.bold,
                colorName: Palette.textColor),
            SizedBox(
              height: getProportionateScreenHeight(29),
            ),
            createGeneralText(
                inputText:
                    'Please Verify Your identity by uploading your\npassport or driving licence',
                fontSize: 14,
                family: FontFamily.gilroy,
                weight: FontWeight.w600,
                colorName: Palette.textColor),
            SizedBox(
              height: getProportionateScreenHeight(67),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BuildCustomButton(
                  onPressed: () {},
                  containerHeight: 250,
                  containerWidth: 149,
                  borderRadiusSize: 10,
                  buttonColor: Palette.primaryContainerColor,
                  buttonChild: Column(
                    children: [
                      SizedBox(
                        height: getProportionateScreenHeight(13),
                      ),
                      Container(
                        height: 105,
                        width: 99,
                        decoration: BoxDecoration(
                            color: Color(0xffd1d8f5),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.file_upload_outlined,
                          color: Palette.primaryColor2,
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(17),
                      ),
                      createGeneralText(
                          inputText: 'Your\nPassword',
                          fontSize: 24,
                          family: FontFamily.clashVariable,
                          weight: FontWeight.w600,
                          colorName: Palette.textColor),
                    ],
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(26),
                ),
                BuildCustomButton(
                  onPressed: () {},
                  containerHeight: 250,
                  containerWidth: 149,
                  borderRadiusSize: 10,
                  buttonColor: Palette.primaryContainerColor,
                  buttonChild: Column(
                    children: [
                      SizedBox(
                        height: getProportionateScreenHeight(13),
                      ),
                      Container(
                        height: 105,
                        width: 99,
                        decoration: BoxDecoration(
                            color: Color(0xffd1d8f5),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.file_upload_outlined,
                          color: Palette.primaryColor2,
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(17),
                      ),
                      createGeneralText(
                          inputText: 'Driving\nLicence',
                          fontSize: 24,
                          family: FontFamily.clashVariable,
                          weight: FontWeight.w600,
                          colorName: Palette.textColor),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(79),
            ),
            Row(
              children: [
                createGeneralText(
                    inputText: 'PRIVACY',
                    fontSize: 15,
                    family: FontFamily.clashVariable,
                    weight: FontWeight.bold,
                    colorName: Palette.usdColor),
                SizedBox(
                  width: getProportionateScreenWidth(14),
                ),
                Icon(
                  Icons.arrow_right,
                  color: Palette.usdColor,
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(74),
            ),
            Center(
              child: SizedBox(
                height: getProportionateScreenHeight(56),
                width: getProportionateScreenWidth(185),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Palette.primaryColor1,
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ))),
                    onPressed: (() {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext) => Transaction()));
                    }),
                    child: Text(
                      'Verify',
                      style: TextStyle(
                        color: Palette.primaryColor2,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        fontFamily: FontFamily.clashVariable,
                      ),
                    )),
              ),
            ),
          ]),
        ));
  }
}
