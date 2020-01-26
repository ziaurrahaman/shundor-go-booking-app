import 'package:flutter/material.dart';
import 'package:shundor_go/screens/authentication_screens/third_onbording_screen.dart';
import 'package:shundor_go/screens/expolreScreenServices/salon_at_home_sceen.dart';

class SalonAtHomeTopMostListviewItem extends StatelessWidget {
  final String serviceTitle;

  SalonAtHomeTopMostListviewItem(this.serviceTitle);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: ListTile(
        title: Padding(
          padding:
              const EdgeInsets.only(left: 8, right: 8, top: 16, bottom: 16),
          child: Text(serviceTitle,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
        ),
      ),
    );
  }
}
