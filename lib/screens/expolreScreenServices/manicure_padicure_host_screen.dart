import 'package:flutter/material.dart';
import 'package:shundor_go/screens/expolreScreenServices/manicure_padicure_screen.dart';
import 'package:shundor_go/screens/expolreScreenServices/facial_and_screen_treatment_screen.dart';

class ManicurePadicureHostScreen extends StatefulWidget {
  static const routeName = 'ManicurePadicureHostScreen';
  @override
  _ManicurePadicureHostScreenState createState() =>
      _ManicurePadicureHostScreenState();
}

class _ManicurePadicureHostScreenState
    extends State<ManicurePadicureHostScreen> {
  var index = 0;
  final List<MyTabs> _tabs = [
    MyTabs('MANICURE PADICURE'),
    MyTabs('FACIAL AND SKIN TREATMENT'),
  ];
  void _setAppBarTitle(int indexofTab) {
    setState(() {
      index = indexofTab;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            _tabs[index].title,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: null,
          ),
          bottom: PreferredSize(
            child: TabBar(
              onTap: (index) => _setAppBarTitle(index),
              isScrollable: true,
              unselectedLabelColor: Colors.white.withOpacity(0.3),
              indicatorColor: Colors.white,
              tabs: <Widget>[
                Tab(
                  child: Text('MANICURE PADICURE'),
                ),
                Tab(
                  child: Text('FACIAL AND SKIN TREATMENT'),
                ),
              ],
            ),
            preferredSize: Size.fromHeight(30.0),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ManicurePadicureScreen(),
            FacialAndSkinTreatmentScreen(),
          ],
        ),
      ),
    );
  }
}

class MyTabs {
  final String title;
  MyTabs(this.title);
}
