import 'dart:async';

import 'package:ch13_fintech_app/core/size_config.dart';
import 'package:flutter/material.dart';

import '../send_money.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        (() => 
        Navigator.pushReplacement(context, MaterialPageRoute(builder:
         (context)=>SendMoney()))
            ));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Column(
        children: [
          Center(
            child: Text('this is a test'),
          ),
          SizedBox(
            height: getProportionateScreenHeight(200),
          ),
          Container(
            height: getProportionateScreenHeight(100),
            width: getProportionateScreenWidth(100),
            color: Colors.green,
          )
        ],
      ),
    );
  }
}
