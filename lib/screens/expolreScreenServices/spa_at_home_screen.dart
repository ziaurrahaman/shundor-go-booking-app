import 'package:flutter/material.dart';
import 'package:shundor_go/widget/servicesScreen/spa_at_home_listview_item.dart';
import 'package:shundor_go/dummyData/spa_at_home_listview_dummy_data.dart';

class SpaAtHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: SPA_AT_HOME_LISTVIEW_DUMMY_DATA.length,
          itemBuilder: (ctx, index) => SpaAtHomeListViewItem(
              SPA_AT_HOME_LISTVIEW_DUMMY_DATA[index].title,
              SPA_AT_HOME_LISTVIEW_DUMMY_DATA[index].imagePath),
        ),
      ),
    );
  }
}
