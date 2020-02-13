import 'package:flutter/material.dart';

import 'package:shundor_go/screens/profileItemScreens/landscape_mode_screen.dart';

import 'package:shundor_go/screens/profileItemScreens/potraitmode_screen.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        56.0;
    // double width = MediaQuery.of(context).size.width;
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return SafeArea(
        child: isLandscape
            ? LandscapeModeScreen(height)
            : PotraitModeScreen(height));
  }
}
