import 'package:flutter/material.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
// import '../screens/sign_up_with_code_first_screen.dart';
import 'package:shundor_go/screens/authentication_screens/sign_up_with_code_first_screen.dart';

class ActiveUseSmsCodeButton extends StatelessWidget {
  final String mobileNumber;

  ActiveUseSmsCodeButton(this.mobileNumber);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(
          SignUpWithCodeFirstScreen.routeName,
          arguments: mobileNumber),
      child: Container(
        margin: const EdgeInsets.only(left: 14, right: 10),
        padding: const EdgeInsets.all(16),
        decoration:
            const BoxDecoration(shape: BoxShape.rectangle, color: Colors.black),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Use SMS',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
