import 'package:flutter/material.dart';
import 'package:shundor_go/screens/expolreScreenServices/profile_screen.dart';
import 'package:shundor_go/screens/expolreScreenServices/transactions_screen.dart';
import 'package:shundor_go/widget/expoloreScreenWidget/both_explore_screen_bottom_navigationbar.dart';
import 'package:shundor_go/screens/explore/both_explore_content_screen.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:shundor_go/screens/expolreScreenServices/booking_screen.dart';
import 'package:shundor_go/widget/expoloreScreenWidget/explore_screen_tilte.dart';

class BothExploreScreen extends StatefulWidget {
  static const routeName = '/main_explore_screen';
  @override
  _BothExploreScreenState createState() => _BothExploreScreenState();
}

class _BothExploreScreenState extends State<BothExploreScreen> {
  int _selectedIndex = 0;
  var bottomNavigationScreens = [
    BothExploreContentScreen(),
    BookingScreen(),
    TransactionsScreen(),
    ProfileScreen(),
  ];
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
            color: Colors.red,
            onPressed: null,
          )
        ],
        automaticallyImplyLeading: false,
        centerTitle: isSelectedIndexGreaterThanZero(),
        title: appbarTitle[_selectedIndex],
        // backgroundColor: const Color(0xFFD4AF37),
        backgroundColor: Colors.black,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
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
                  icon: Icon(
                    Icons.search,
                  ),
                  title: Text('Explore')),
              const BottomNavigationBarItem(
                  icon: Icon(
                    MdiIcons.calendarMonthOutline,
                  ),
                  title: Text(
                    'Booking',
                  )),
              const BottomNavigationBarItem(
                  icon: Icon(
                    MdiIcons.formatAlignJustify,
                  ),
                  title: Text('Transactions')),
              const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_outline,
                  ),
                  title: Text('Profile')),
            ]),
      ),
    );
  }
}
