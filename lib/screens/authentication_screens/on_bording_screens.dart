import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:shundor_go/screens/authentication_screens/first_on_bording_screen.dart';
import 'package:shundor_go/screens/authentication_screens/fourth_onbording_screens.dart';
import 'package:shundor_go/screens/authentication_screens/second_onbording_screen.dart';
import 'package:shundor_go/screens/authentication_screens/third_onbording_screen.dart';

class OnBordingScreens extends StatelessWidget {
  static const routeName = '/on_bording_screens';
  final controlller = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: PageIndicatorContainer(
          child: PageView(
            children: <Widget>[
              FirstOnBordingScreen(),
              SecondOnBordingScreen(),
              ThirdOnBordingScreen(),
              FourthOnBordingScreen()
            ],
          ),
          length: 4,
          align: IndicatorAlign.bottom,
          indicatorColor: Colors.grey,
          indicatorSelectorColor: Colors.white,
        ),
      ),
    );
  }
}
