import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BothExploreScreenBottomNavigationbar extends StatefulWidget {
  @override
  _BothExploreScreenBottomNavigationbarState createState() =>
      _BothExploreScreenBottomNavigationbarState();
}

class _BothExploreScreenBottomNavigationbarState
    extends State<BothExploreScreenBottomNavigationbar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
        ]);
  }
}
