import 'package:flutter/material.dart';
import 'package:shundor_go/screens/authentication_screens/sign_up_with_code_first_screen.dart';
import 'dart:async';
// import './screens/first_on_bording_screen.dart';
import 'package:shundor_go/screens/authentication_screens/first_on_bording_screen.dart';
// import './screens/on_bording_screens.dart';
import 'package:shundor_go/screens/authentication_screens/on_bording_screens.dart';
// import './screens/fifth_onbording_screen.dart';
import 'package:shundor_go/screens/authentication_screens/fifth_onbording_screen.dart';
import 'package:shundor_go/screens/authentication_screens/welcome_screen.dart';
import 'package:shundor_go/signUp/mobile_sign_up_screen.dart';
import 'package:shundor_go/screens/explore/optional_explore_screen.dart';
// import './screens/last_on_bording_screen.dart';
import 'package:shundor_go/screens/authentication_screens/last_on_bording_screen.dart';
import './screens/explore/main_explore_screen.dart';

void main() => runApp(MaterialApp(
      home: SplashScreen(),
      routes: {
        WelcomeScreen.routeName: (ctx) => WelcomeScreen(),
        MobileSignUPScreen.routeName: (ctx) => MobileSignUPScreen(),
        SignUpWithCodeFirstScreen.routeName: (ctx) =>
            SignUpWithCodeFirstScreen(),
        FirstOnBordingScreen.routeName: (ctx) => FirstOnBordingScreen(),
        OnBordingScreens.routeName: (ctx) => OnBordingScreens(),
        FifthOnbordingScreen.routeName: (ctx) => FifthOnbordingScreen(),
        LastOnBordingScreen.routeName: (ctx) => LastOnBordingScreen(),
        MainExploreScreen.routeName: (ctx) => MainExploreScreen(),
        OptionalExploreScreen.routeName: (ctx) => OptionalExploreScreen()
      },
    ));

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context)
            .pushReplacementNamed(WelcomeScreen.routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Image.asset(
          'assets/images/shundor_go_splash_image.png',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
