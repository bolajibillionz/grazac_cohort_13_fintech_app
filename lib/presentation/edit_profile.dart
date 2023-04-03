import 'package:flutter/material.dart';
import 'package:ch13_fintech_app/core/constants.dart';
import 'package:flutter/material.dart';

import '../core/reuseables/general_button.dart';
import '../core/reuseables/general_text.dart';
import '../core/size_config.dart';
import 'identity_verification.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _nameController = TextEditingController();
  final _locationController = TextEditingController();
  final _addressController = TextEditingController();
  final _phoneNumController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Palette.primaryColor3,
      body: Padding(
        padding: EdgeInsets.all(41.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
            height: getProportionateScreenHeight(25),
          ),
          Row(
            children: [
              createGeneralText(
                  inputText: 'Edit profile',
                  fontSize: 37,
                  family: FontFamily.gilroy,
                  weight: FontWeight.bold,
                  colorName: Palette.textColor),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(19),
          ),
          Center(child: Image(image: AssetImage('images/Rectangle 39.png'))),
          SizedBox(
            height: getProportionateScreenHeight(14),
          ),
          Center(
            child: createGeneralText(
                inputText: 'Change Profile Picture',
                fontSize: 18,
                family: FontFamily.clashVariable2,
                weight: FontWeight.w600,
                colorName: Palette.primaryTextColor1),
          ),
          SizedBox(
            height: getProportionateScreenHeight(44),
          ),
          createGeneralText(
              inputText: 'Name',
              fontSize: 12,
              family: FontFamily.clashVariable2,
              weight: FontWeight.w600,
              colorName: Palette.primaryTextColor1),
          SizedBox(
            height: getProportionateScreenHeight(8),
          ),
          TextFormField(
            controller: _nameController,
            cursorColor: Colors.black,
            validator: (value) {
              if (_nameController.text.isEmpty) {
                return 'Enter Name';
              } else {
                return null;
              }
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide.none),
              filled: true,
              suffixIcon: Icon(
                Icons.edit_square,
                color: Palette.textColor,
              ),
              fillColor: Palette.primaryContainerColor,
              hintText: 'Domhnall Gleeson',
            ),
            keyboardType: TextInputType.name,
          ),
          SizedBox(
            height: getProportionateScreenHeight(13),
          ),
          createGeneralText(
              inputText: 'Location',
              fontSize: 12,
              family: FontFamily.clashVariable2,
              weight: FontWeight.w600,
              colorName: Palette.primaryTextColor1),
          SizedBox(
            height: getProportionateScreenHeight(8),
          ),
          TextFormField(
            controller: _nameController,
            cursorColor: Colors.black,
            validator: (value) {
              if (_nameController.text.isEmpty) {
                return 'Enter Location';
              } else {
                return null;
              }
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide.none),
              filled: true,
              suffixIcon: Icon(
                Icons.edit_square,
                color: Palette.textColor,
              ),
              fillColor: Palette.primaryContainerColor,
              hintText: 'United States',
            ),
            keyboardType: TextInputType.name,
          ),
          SizedBox(
            height: getProportionateScreenHeight(13),
          ),
          createGeneralText(
              inputText: 'Address',
              fontSize: 12,
              family: FontFamily.clashVariable2,
              weight: FontWeight.w600,
              colorName: Palette.primaryTextColor1),
          SizedBox(
            height: getProportionateScreenHeight(8),
          ),
          TextFormField(
            controller: _nameController,
            cursorColor: Colors.black,
            validator: (value) {
              if (_nameController.text.isEmpty) {
                return 'Enter Address';
              } else {
                return null;
              }
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide.none),
              filled: true,
              suffixIcon: Icon(
                Icons.edit_square,
                color: Palette.textColor,
              ),
              fillColor: Palette.primaryContainerColor,
              hintText: '123 Street/NYC',
            ),
            keyboardType: TextInputType.name,
          ),
          SizedBox(
            height: getProportionateScreenHeight(13),
          ),
          createGeneralText(
              inputText: 'Phone Number',
              fontSize: 12,
              family: FontFamily.clashVariable2,
              weight: FontWeight.w600,
              colorName: Palette.primaryTextColor1),
          SizedBox(
            height: getProportionateScreenHeight(8),
          ),
          TextFormField(
            controller: _nameController,
            cursorColor: Colors.black,
            validator: (value) {
              if (_nameController.text.isEmpty) {
                return 'Enter Phone Number';
              } else {
                return null;
              }
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide.none),
              filled: true,
              suffixIcon: Icon(
                Icons.edit_square,
                color: Palette.textColor,
              ),
              fillColor: Palette.primaryContainerColor,
              hintText: '+000 000 00000',
            ),
            keyboardType: TextInputType.name,
          ),
          SizedBox(
            height: getProportionateScreenHeight(60),
          ),
          Center(
            child: SizedBox(
              height: getProportionateScreenHeight(56),
              width: getProportionateScreenWidth(332),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Palette.primaryColor1,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ))),
                  onPressed: (() {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext) => Identity()));
                  }),
                  child: Text(
                    'Save Changes',
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
      ),
    );
  }
}
