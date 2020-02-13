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
  AppBar appBar;
  var index = 0;
  final List<MyTabs> _tabs = [
    MyTabs('MANICURE PADICURE'),
    MyTabs('FACIAL AND SKIN TREATMENT'),
    MyTabs('HAIR TREATMENT'),
    MyTabs('BRIGHTENING AND FAIR POLISH'),
    MyTabs('WAXING AND HAIR REMOVAL'),
    MyTabs('THREADING AND ADD ONS'),
    MyTabs('HAIR CUT'),
  ];
  void _setAppBarTitle(int indexofTab) {
    setState(() {
      index = indexofTab;
    });
  }

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments as int;
    appBar = AppBar(
      centerTitle: true,
      title: Text(
        _tabs[args].title,
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      backgroundColor: Colors.black,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
      bottom: PreferredSize(
        child: TabBar(
          onTap: (index) => _setAppBarTitle(index),
          isScrollable: true,
          unselectedLabelColor: Colors.white.withOpacity(0.3),
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(
              child: const Text('MANICURE PADICURE'),
            ),
            Tab(
              child: const Text('FACIAL AND SKIN TREATMENT'),
            ),
            Tab(
              child: const Text('HAIR TREATMENT'),
            ),
            Tab(
              child: Text('BRIGHTENING AND FAIR POLISH'),
            ),
            Tab(
              child: const Text('WAXING AND HAIR REMOVAL'),
            ),
            Tab(
              child: const Text('THREADING AND ADD ONS'),
            ),
            Tab(
              child: const Text('HAIR CUT'),
            ),
          ],
        ),
        preferredSize: const Size.fromHeight(30.0),
      ),
    );
    double height = MediaQuery.of(context).size.height -
        appBar.preferredSize.height -
        MediaQuery.of(context).padding.top;
    double width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      initialIndex: args,
      length: 7,
      child: Scaffold(
        appBar: appBar,
        body: TabBarView(
          children: <Widget>[
            ManicurePadicureScreen(height, width),
            FacialAndSkinTreatmentScreen(height, width),
            Container(
              child: Center(
                child: const Text('Hair Treatment'),
              ),
            ),
            Container(
              child: Center(
                child: const Text('Brightening ad Fair Polish'),
              ),
            ),
            Container(
              child: Center(
                child: const Text('Waxing and Hair Removal'),
              ),
            ),
            Container(
              child: Center(
                child: const Text('Threading and Add ons'),
              ),
            ),
            Container(
              child: Center(
                child: const Text('Hair Cut'),
              ),
            ),
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
