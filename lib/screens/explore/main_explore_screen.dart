import 'package:flutter/material.dart';
import 'package:shundor_go/widget/expoloreScreenWidget/explore_screen_bottom_navigationbar.dart';
import 'package:shundor_go/screens/explore/main_explore_content_screen.dart';

class MainExploreScreen extends StatefulWidget {
  static const routeName = '/main_explore_screen';
  @override
  _MainExploreScreenState createState() => _MainExploreScreenState();
}

class _MainExploreScreenState extends State<MainExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.red,
            onPressed: null,
          )
        ],
        automaticallyImplyLeading: false,
        title: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: Text(
                    'Find Service at',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.location_on,
                  color: Colors.white,
                  size: 16,
                ),
                Text(
                  'Bashundhara R\/A',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            )
          ],
        ),
        backgroundColor: Colors.black,
      ),
      body: MainExploreContentScreen(),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.black, primaryColor: const Color(0xFFD4AF37)),
        child: ExploreScreenBottomNavigationbar(),
      ),
    );
  }
}