import 'package:flutter/material.dart';
import 'package:shundor_go/dummyData/salonAtHome/salon_at_home_listview_dummy_data.dart';
import 'package:shundor_go/widget/servicesScreen/salon_at_home_top_most_listview_list_item.dart';

class SalonAtHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: SALLON_AT_HOME_LISTVIEW_MODEL_DUMMY_DATA.length,
          itemBuilder: (ctx, index) => SalonAtHomeTopMostListviewItem(
              SALLON_AT_HOME_LISTVIEW_MODEL_DUMMY_DATA[index].serviceTitle,
              index),
        ),
      ),
    );
  }
}
