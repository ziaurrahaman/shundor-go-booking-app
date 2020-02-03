import 'package:flutter/material.dart';
import './last_on_bording_screen.dart';

class FifthOnbordingScreen extends StatelessWidget {
  static const routeName = '/fifth_onbording_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.black),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(
                height: 16,
              ),
              Center(
                  child: Icon(
                Icons.location_on,
                color: Colors.white,
                size: 128,
              )),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Enable Location Service',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    // margin: EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      'Get the best beauty recommendations around you SundhorGo will need to use your location services to do this',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          // fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),

                  // Container(
                  //   padding: EdgeInsets.all(10),
                  //   child: Text(
                  //     'SundhorGo will need to use your location services to do this.',
                  //     textAlign: TextAlign.center,
                  //     style: TextStyle(
                  //         color: Colors.white,
                  //         // fontWeight: FontWeight.bold,
                  //         fontSize: 14),
                  //   ),
                  // )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  InkWell(
                    onTap: () => Navigator.of(context)
                        .pushReplacementNamed(LastOnBordingScreen.routeName),
                    child: Container(
                      margin: EdgeInsets.only(left: 16, right: 16),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.rectangle),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'ENABLE LOCATION',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'NOT NOW',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
