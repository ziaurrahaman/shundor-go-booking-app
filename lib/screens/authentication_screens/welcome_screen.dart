import 'package:flutter/material.dart';
import 'package:shundor_go/widget/welcome_screen_mobile_signup_button.dart';
import 'package:shundor_go/widget/welcome_screen_facebook_signup_button.dart';
import 'package:shundor_go/widget/welcome_screen_google_signup_button.dart';
// import '../signUp/mobile_sign_up_screen.dart';
// import '../widget/welcome_screen_mobile_signup_button.dart';
// import '../widget/welcome_screen_facebook_signup_button.dart';
// import '../widget/welcome_screen_google_signup_button.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = '/welcomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Image.asset(
          'assets/images/shundor_go_splash_image.png',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            WelcomeScreenMobileSignUpButton(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: WelcomeScreenFacebookSignUpButton(),
                ),
                Expanded(
                  child: WelcomeScreenGoogleSignUpButton(),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            )
          ],
        )
      ],
    ));
  }
}
