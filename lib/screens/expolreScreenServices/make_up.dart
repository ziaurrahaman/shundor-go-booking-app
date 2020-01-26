import 'package:flutter/material.dart';
import 'package:shundor_go/dummyData/make_up_screen_listview_dummy_data.dart';
import 'package:shundor_go/widget/servicesScreen/make_up_screen_listview_item.dart';

class MakeUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: MAKE_UP_SCREEN_LISTVIEW_DUMMY_DAT.length,
          itemBuilder: (ctx, index) => MakeUpScreenListViewItem(
              MAKE_UP_SCREEN_LISTVIEW_DUMMY_DAT[index].title,
              MAKE_UP_SCREEN_LISTVIEW_DUMMY_DAT[index].imagePath),
        ),
      ),
    );
  }
}
