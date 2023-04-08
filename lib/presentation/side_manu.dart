import 'package:ch13_fintech_app/core/constants.dart';
import 'package:flutter/material.dart';
import '../core/size_config.dart';
import 'NavBar..dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
     SizeConfig.init(context);
    return Scaffold(
      drawer: NavBar(),
      backgroundColor: Palette.primaryColor2,
      appBar: AppBar(
        backgroundColor: Palette.primaryColor2,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
      ),
    );
  }
}
