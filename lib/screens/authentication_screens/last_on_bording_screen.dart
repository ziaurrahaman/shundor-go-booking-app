import 'package:flutter/material.dart';
// import '../screens/explore/main_explore_screen.dart';
import 'package:shundor_go/screens/explore/main_explore_screen.dart';

class LastOnBordingScreen extends StatelessWidget {
  static const routeName = '/last_onbording_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.black),
          ),
          Column(
            children: <Widget>[
              // SizedBox(
              //   height: 32,
              // ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(16),
                      padding: EdgeInsets.all(16),
                      child: Center(
                          child: Text(
                        'ShundorGo lets you easily find beauty services in your area',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'First, show me services for:',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(
                      onTap: () => Navigator.of(context)
                          .pushReplacementNamed(MainExploreScreen.routeName),
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 16,
                          right: 16,
                        ),
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.rectangle),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'WOMEN',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: null,
                      child: Container(
                        margin: EdgeInsets.only(left: 16, right: 16),
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.rectangle),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'MEN',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: null,
                      child: Container(
                        margin: EdgeInsets.only(left: 16, right: 16),
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.rectangle),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'BOTH',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}