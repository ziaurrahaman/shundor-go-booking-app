import 'package:flutter/material.dart';
import 'package:shundor_go/screens/explore/woman_explore_sceen_content.dart';
import 'package:shundor_go/screens/expolreScreenServices/booking_screen.dart';
import 'package:shundor_go/screens/expolreScreenServices/profile_screen.dart';
import 'package:shundor_go/screens/expolreScreenServices/transactions_screen.dart';
// import 'package:shundor_go/widget/expoloreScreenWidget/both_explore_screen_bottom_navigationbar.dart';
import 'package:shundor_go/widget/expoloreScreenWidget/explore_screen_tilte.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class WomanExploreScreen extends StatefulWidget {
  static const routeName = '/optional_explore_screen';
  @override
  _WomanExploreScreenState createState() => _WomanExploreScreenState();
}

class _WomanExploreScreenState extends State<WomanExploreScreen> {
  int _selectedIndex = 0;

  var appbarTitle = [
    ExploreScreenTitle(),
    Text(
      'Bookings',
      style: TextStyle(fontSize: 20),
    ),
    Text(
      'Transactions',
      style: TextStyle(fontSize: 20),
    ),
    Text(''),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  bool isSelectedIndexGreaterThanZero() {
    if (_selectedIndex > 0) {
      return true;
    } else {
      return false;
    }
  }

  Widget showOrHideAppbar() {
    if (_selectedIndex == 3) {
      return PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          backgroundColor: Colors.black,
        ),
      );
    } else {
      return AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.white,
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
          automaticallyImplyLeading: false,
          centerTitle: isSelectedIndexGreaterThanZero(),
          title: appbarTitle[_selectedIndex],
          // backgroundColor: const Color(0xFFD4AF37),
          backgroundColor: Colors.black);
    }
  }

  @override
  Widget build(BuildContext context) {
// ... set key field of widget

    double height = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.top -
        56.0;
    double width = MediaQuery.of(context).size.width;
    var bottomNavigationScreens = [
      WomanExploreScreenContent(height, width),
      BookingScreen(),
      TransactionsScreen(),
      ProfileScreen(),
    ];

    return Scaffold(
      appBar: showOrHideAppbar(),
      body: bottomNavigationScreens[_selectedIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.black, primaryColor: const Color(0xFFD4AF37)),
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: _onItemTapped,
            backgroundColor: Colors.black,
            unselectedItemColor: Colors.white,
            showSelectedLabels: true,
            currentIndex: _selectedIndex,
            selectedItemColor: const Color(0xFFD4AF37),
            selectedFontSize: 12,
            unselectedFontSize: 12,
            items: [
              const BottomNavigationBarItem(
                  icon: const Icon(
                    Icons.search,
                  ),
                  title: const Text('Explore')),
              const BottomNavigationBarItem(
                  icon: const Icon(
                    MdiIcons.calendarMonthOutline,
                  ),
                  title: const Text(
                    'Booking',
                  )),
              const BottomNavigationBarItem(
                  icon: const Icon(
                    MdiIcons.formatAlignJustify,
                  ),
                  title: const Text('Transactions')),
              const BottomNavigationBarItem(
                  icon: const Icon(
                    Icons.person_outline,
                  ),
                  title: const Text('Profile')),
            ]),
      ),
    );
  }
}
