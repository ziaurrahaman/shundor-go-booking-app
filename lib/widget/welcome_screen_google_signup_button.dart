import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class WelcomeScreenGoogleSignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print('google'),
      splashColor: Colors.white,
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            border: Border.all(color: Colors.white)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Icon(
            //   MdiIcons.googleChrome,
            //   size: 24,
            //   color: Colors.blueAccent,
            // ),
            Image.asset(
              'assets/images/google.png',
              fit: BoxFit.contain,
            ),
            const SizedBox(
              width: 8,
            ),
            const Text(
              'Google',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
