import 'package:flutter/material.dart';
import 'package:shundor_go/screens/explore/woman_explore_sceen_content.dart';
import 'package:shundor_go/widget/expoloreScreenWidget/both_explore_screen_bottom_navigationbar.dart';

class WomanExploreScreen extends StatefulWidget {
  static const routeName = '/optional_explore_screen';
  @override
  _WomanExploreScreenState createState() => _WomanExploreScreenState();
}

class _WomanExploreScreenState extends State<WomanExploreScreen> {
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
        backgroundColor: const Color(0xFFD4AF37),
      ),
      body: WomanExploreScreenContent(),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.black, primaryColor: const Color(0xFFD4AF37)),
        child: BothExploreScreenBottomNavigationbar(),
      ),
    );
  }
}
