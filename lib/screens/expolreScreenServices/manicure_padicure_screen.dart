import 'package:flutter/material.dart';
import 'package:shundor_go/dummyData/manicure_padicure_sceen_listview_dummy_data.dart';
import 'package:shundor_go/widget/servicesScreen/manicure_padicure_screen_listview_item.dart';

class ManicurePadicureScreen extends StatelessWidget {
  final double height;
  final double width;
  ManicurePadicureScreen(this.height, this.width);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: ListView.builder(
          itemCount: MANICURE_PADICURE_LISTVIEW_DUMMY_DATA.length,
          itemBuilder: (ctx, index) => ManicurePadicureScreenListviewItem(
            tile: MANICURE_PADICURE_LISTVIEW_DUMMY_DATA[index].serviceTitle,
            cost: MANICURE_PADICURE_LISTVIEW_DUMMY_DATA[index].serviceCost,
            duration:
                MANICURE_PADICURE_LISTVIEW_DUMMY_DATA[index].serviceDuration,
            height: height,
            width: width,
          ),
        ),
      ),
    );
  }
}
