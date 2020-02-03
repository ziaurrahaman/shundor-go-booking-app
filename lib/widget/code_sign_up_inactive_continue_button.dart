import 'package:flutter/material.dart';

class SignUpPageInactiveContinueButton extends StatelessWidget {
  final double height;
  final double width;

  SignUpPageInactiveContinueButton(this.height, this.width);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      margin: EdgeInsets.only(left: width * 0.02, right: width * 0.02),
      padding: EdgeInsets.only(
          left: width * 0.02,
          right: width * 0.02,
          top: height * 0.02,
          bottom: height * 0.02),
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
