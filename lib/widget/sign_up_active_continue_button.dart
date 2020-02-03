import 'package:flutter/material.dart';
// import '../screens/on_bording_screens.dart';
import 'package:shundor_go/screens/authentication_screens/on_bording_screens.dart';

class SignUpPageActiveContinueButton extends StatelessWidget {
  final double height;
  final double width;

  SignUpPageActiveContinueButton(this.height, this.width);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context)
          .pushReplacementNamed(OnBordingScreens.routeName),
      child: Center(
          child: Container(
        margin: EdgeInsets.only(left: width * 0.03, right: width * 0.03),
        padding: EdgeInsets.only(
            left: width * 0.02,
            right: width * 0.02,
            top: height * 0.02,
            bottom: height * 0.02),
        decoration: BoxDecoration(
            color: const Color(0xFFD4AF37), shape: BoxShape.rectangle),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Continue',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      )),
    );
  }
}
