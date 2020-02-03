import 'package:flutter/material.dart';
import 'package:shundor_go/screens/profileItemScreens/account_details_screen.dart';
import 'package:shundor_go/screens/profileItemScreens/location_screen.dart';
import 'package:shundor_go/screens/profileItemScreens/review_screen.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        56.0;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: height * 0.25,
            width: double.infinity,
            decoration:
                BoxDecoration(shape: BoxShape.rectangle, color: Colors.black),
            child: Center(
              child: ListTile(
                leading: CircleAvatar(
                    radius: 30,
                    child: Image.asset(
                      'assets/images/profile_image.png',
                      fit: BoxFit.cover,
                    )),
                title: Text(
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
            height: height * 0.70,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 60,
                    width: double.infinity,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 90,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 10),
                                child: Text(
                                  'Acount Details',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 10,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () => Navigator.of(context)
                                      .pushNamed(
                                          AccountDetailsScreen.routeName),
                                ),
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: Divider(
                            indent: 10,
                            endIndent: 10,
                            color: Colors.grey,
                            height: 1,
                            thickness: 1,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 90,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 10),
                                child: Text(
                                  'Location',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 10,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () => Navigator.of(context)
                                      .pushNamed(LocationScreen.routeName),
                                ),
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: Divider(
                            indent: 10,
                            endIndent: 10,
                            color: Colors.grey,
                            height: 1,
                            thickness: 1,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 90,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 10),
                                child: Text(
                                  'Reviews',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 10,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () => Navigator.of(context)
                                      .pushNamed(ReviewScreen.routeName),
                                ),
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: Divider(
                            indent: 10,
                            endIndent: 10,
                            color: Colors.grey,
                            height: 1,
                            thickness: 1,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 90,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 10),
                                child: Text(
                                  'Invite Friends',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 10,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey,
                                  ),
                                  onPressed: null,
                                ),
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: Divider(
                            indent: 10,
                            endIndent: 10,
                            color: Colors.grey,
                            height: 1,
                            thickness: 1,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 90,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 10),
                                child: Text(
                                  'FAQ',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 10,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey,
                                  ),
                                  onPressed: null,
                                ),
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: Divider(
                            indent: 10,
                            endIndent: 10,
                            color: Colors.grey,
                            height: 1,
                            thickness: 1,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 90,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 10),
                                child: Text(
                                  'Terms of Service',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 10,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey,
                                  ),
                                  onPressed: null,
                                ),
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: Divider(
                            indent: 10,
                            endIndent: 10,
                            color: Colors.grey,
                            height: 1,
                            thickness: 1,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 90,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 10),
                                child: Text(
                                  'Privacy Policy',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 10,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey,
                                  ),
                                  onPressed: null,
                                ),
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: Divider(
                            indent: 10,
                            endIndent: 10,
                            color: Colors.grey,
                            height: 1,
                            thickness: 1,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 15),
                                child: Text(
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
      ),
    );
  }
}
