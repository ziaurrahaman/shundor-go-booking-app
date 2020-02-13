import 'package:flutter/material.dart';
import 'package:shundor_go/screens/profileItemScreens/account_details_screen.dart';
import 'package:shundor_go/screens/profileItemScreens/location_screen.dart';
import 'package:shundor_go/screens/profileItemScreens/review_screen.dart';
import 'package:shundor_go/widget/profileScreen/profile_screen_item.dart';

class LandscapeModeScreen extends StatelessWidget {
  final double height;
  LandscapeModeScreen(this.height);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          height: height * 0.25,
          width: double.infinity,
          decoration: const BoxDecoration(
              shape: BoxShape.rectangle, color: Colors.black),
          child: Center(
            child: ListTile(
              leading: CircleAvatar(
                  radius: 30,
                  child: Image.asset(
                    'assets/images/profile_image.png',
                    fit: BoxFit.cover,
                  )),
              title: const Text(
                'Shahruk Khan',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Container(
          height: height * 0.65,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ProfileScreenItem(
                    'Account Details', AccountDetailsScreen.routeName),
                ProfileScreenItem('Location', LocationScreen.routeName),
                ProfileScreenItem('Reviews', ReviewScreen.routeName),
                ProfileScreenItem('Invite Friends', ''),
                ProfileScreenItem('FAQ', ''),
                ProfileScreenItem('Terms of Service', ''),
                ProfileScreenItem('Privacy Policy', ''),
                Container(
                  height: 60,
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20, top: 15),
                              child: const Text(
                                'Log out',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
