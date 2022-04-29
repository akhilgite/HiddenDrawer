import 'package:flutter/material.dart';
import 'package:hidden_drawer/pages/home_page.dart';
import 'package:hidden_drawer/pages/setting_page.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];

  final myTextStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: "Home",
              baseStyle: myTextStyle,
              selectedStyle: myTextStyle,
              colorLineSelected: Colors.deepPurple),
          HomePage()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: "Setting",
              baseStyle: myTextStyle,
              selectedStyle: myTextStyle,
              colorLineSelected: Colors.deepPurple),
          SettingPage())
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.deepPurple.shade200,
      screens: _pages,
      initPositionSelected: 0,
      slidePercent: 50,
    );
  }
}
