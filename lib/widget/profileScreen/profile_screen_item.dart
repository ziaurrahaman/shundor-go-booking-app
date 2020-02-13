import 'package:flutter/material.dart';
import 'package:shundor_go/screens/profileItemScreens/account_details_screen.dart';

class ProfileScreenItem extends StatelessWidget {
  final String title;
  final String routeName;
  ProfileScreenItem(this.title, this.routeName);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                flex: 90,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              ),
              Expanded(
                flex: 10,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                    onPressed: () => Navigator.of(context).pushNamed(routeName),
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: const Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.grey,
              height: 1,
              thickness: 1,
            ),
          )
        ],
      ),
    );
  }
}
