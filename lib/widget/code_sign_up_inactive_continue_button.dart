import 'package:flutter/material.dart';

class SignUpPageInactiveContinueButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      margin: EdgeInsets.only(left: 14, right: 14),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(color: Colors.white, shape: BoxShape.rectangle),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Continue',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
    ));
  }
}
