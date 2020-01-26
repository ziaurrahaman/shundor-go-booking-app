import 'package:flutter/material.dart';
import 'package:shundor_go/screens/expolreScreenServices/salon_at_home_sceen.dart';
import 'package:shundor_go/screens/expolreScreenServices/spa_at_home_screen.dart';
import 'package:shundor_go/screens/expolreScreenServices/make_up.dart';

import 'package:shundor_go/dummyData/make_up_screen_listview_dummy_data.dart';
import 'package:shundor_go/widget/servicesScreen/make_up_screen_listview_item.dart';

class ServiceHostScreen extends StatefulWidget {
  static const routeName = 'service_host_screen';

  @override
  _ServiceHostScreen createState() => _ServiceHostScreen();
}

class _ServiceHostScreen extends State<ServiceHostScreen>
    with TickerProviderStateMixin {
  var index = 0;
  final List<MyTabs> _tabs = [
    MyTabs('Salon At Home'),
    MyTabs('Spa At Home'),
    MyTabs('MakeUp'),
    MyTabs('Bridal Makeup'),
  ];

  void _setAppBarTitle(int indexofTab) {
    setState(() {
      index = indexofTab;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
                  child: Text('Salon At Home'),
                ),
                Tab(
                  child: Text('Spa At Home'),
                ),
                Tab(
                  child: Text('MakeUp'),
                ),
                Tab(
                  child: Text('Bridal MakeUp'),
                )
              ],
            ),
            preferredSize: Size.fromHeight(30.0),
          ),
          // actions: <Widget>[],
        ),
        body: TabBarView(
          children: <Widget>[
            SalonAtHomeScreen(),
            SpaAtHome(),
            MakeUpScreen(),
            Container(
              child: Center(
                child: Text('Bridal MakeUp'),
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
