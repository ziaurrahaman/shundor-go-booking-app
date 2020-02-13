import 'package:flutter/material.dart';

class AccountDetailsScreenItem extends StatelessWidget {
  final String title;
  final String titleText;
  AccountDetailsScreenItem(this.title, this.titleText);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 15),
            child: Text(
              title,
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Text(
              titleText,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: const Divider(
                  color: Colors.grey,
                  thickness: 1,
                  indent: 10,
                  endIndent: 10,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
