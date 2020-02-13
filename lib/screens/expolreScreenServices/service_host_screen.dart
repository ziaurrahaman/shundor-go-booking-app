import 'package:flutter/material.dart';
import 'package:shundor_go/screens/expolreScreenServices/salon_at_home_sceen.dart';
import 'package:shundor_go/screens/expolreScreenServices/spa_at_home_screen.dart';
import 'package:shundor_go/screens/expolreScreenServices/make_up.dart';

// import 'package:shundor_go/dummyData/make_up_screen_listview_dummy_data.dart';
// import 'package:shundor_go/widget/servicesScreen/make_up_screen_listview_item.dart';

class ServiceHostScreen extends StatefulWidget {
  static const routeName = 'service_host_screen';

  @override
  _ServiceHostScreen createState() => _ServiceHostScreen();
}

class _ServiceHostScreen extends State<ServiceHostScreen> {
  int args;
  final List<MyTabs> _tabs = [
    MyTabs('Salon At Home'),
    MyTabs('Spa At Home'),
    MyTabs('MakeUp'),
    MyTabs('Bridal Makeup'),
    MyTabs('Hair Styling'),
    MyTabs('Hands and Fit'),
    MyTabs('Massage'),
    MyTabs('Event Services'),
    MyTabs('HairCut and Color'),
    MyTabs('MakeUp'),
  ];

  void _setAppBarTitle(int index) {
    setState(() {
      args = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    args = ModalRoute.of(context).settings.arguments as int;

    return DefaultTabController(
      initialIndex: args,
      length: 10,
      child: Scaffold(
        appBar: AppBar(
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
                  child: const Text('Salon At Home'),
                ),
                Tab(
                  child: const Text('Spa At Home'),
                ),
                Tab(
                  child: const Text('MakeUp'),
                ),
                Tab(
                  child: const Text('Bridal MakeUp'),
                ),
                Tab(
                  child: const Text('Hair Styling'),
                ),
                Tab(
                  child: const Text('Hands and Fit'),
                ),
                Tab(
                  child: const Text('Massage'),
                ),
                Tab(
                  child: const Text('Event Services'),
                ),
                Tab(
                  child: const Text('HairCut and Color'),
                ),
                Tab(
                  child: const Text('MakeUp'),
                ),
              ],
            ),
            preferredSize: const Size.fromHeight(30.0),
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
                child: const Text('Bridal MakeUp'),
              ),
            ),
            Container(
              child: Center(
                child: const Text('Hair Styling'),
              ),
            ),
            Container(
              child: Center(
                child: const Text('Hands and Fit'),
              ),
            ),
            Container(
              child: Center(
                child: const Text('Massage'),
              ),
            ),
            Container(
              child: Center(
                child: const Text('Event Services'),
              ),
            ),
            Container(
              child: Center(
                child: const Text('HairCut and Color'),
              ),
            ),
            MakeUpScreen(),
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
