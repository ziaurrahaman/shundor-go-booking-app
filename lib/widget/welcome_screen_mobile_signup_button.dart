import 'package:flutter/material.dart';
import '../signUp/mobile_sign_up_screen.dart';

class WelcomeScreenMobileSignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Navigator.of(context).pushNamed(MobileSignUPScreen.routeName),
      child: Container(
        margin: EdgeInsets.all(16),
        padding: EdgeInsets.all(14),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle, border: Border.all(color: Colors.white)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Mobile',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              width: 8,
            ),
            Icon(
              Icons.phone_iphone,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
