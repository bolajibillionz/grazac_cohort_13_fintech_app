import 'package:ch13_fintech_app/core/constants.dart';
import 'package:flutter/material.dart';

import '../core/size_config.dart';


class SendMoney extends StatefulWidget {
  const SendMoney({super.key});

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(backgroundColor: Palette.primaryColor3,
    body: Column(children: [
      SizedBox(
            height: getProportionateScreenHeight(70),
          ),
      Row()
    ],),);
  }
}
