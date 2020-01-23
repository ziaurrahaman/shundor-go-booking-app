import 'package:flutter/material.dart';
// import '../screens/on_bording_screens.dart';
import 'package:shundor_go/screens/authentication_screens/on_bording_screens.dart';

class SignUpPageActiveContinueButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context)
          .pushReplacementNamed(OnBordingScreens.routeName),
      child: Center(
          child: Container(
        margin: EdgeInsets.only(left: 14, right: 14),
        padding: EdgeInsets.all(16),
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
