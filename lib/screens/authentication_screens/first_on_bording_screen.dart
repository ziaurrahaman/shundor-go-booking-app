import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FirstOnBordingScreen extends StatelessWidget {
  static const routeName = '/first_onbording_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.black, const Color(0xFFD4AF37)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(right: 10),
                  child: Text(
                    'Skip',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Center(
                  child:
                      Image.asset('assets/images/onbording_screen_image.png')),
              Center(
                child: const Text(
                  'Title 1',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          )
        ],
      ),
    );
  }
}
