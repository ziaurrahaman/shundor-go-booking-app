import 'package:flutter/material.dart';
import 'package:shundor_go/dummyData/facial_and_skin_treatment_listview_dummy_data.dart';
import 'package:shundor_go/widget/servicesScreen/facial_and_screen_treatment_listview_item.dart';

class FacialAndSkinTreatmentScreen extends StatelessWidget {
  final double height;
  final double width;
  FacialAndSkinTreatmentScreen(this.height, this.width);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: ListView.builder(
          itemCount: FACIAL_AND_SKIN_TREATMENT_LISTVIEW_DUMMY_DATA.length,
          itemBuilder: (ctx, index) => FacialAndSkinTreatmentScreenListviewItem(
            tile: FACIAL_AND_SKIN_TREATMENT_LISTVIEW_DUMMY_DATA[index]
                .serviceTitle,
            cost: FACIAL_AND_SKIN_TREATMENT_LISTVIEW_DUMMY_DATA[index]
                .serviceCost,
            duration: FACIAL_AND_SKIN_TREATMENT_LISTVIEW_DUMMY_DATA[index]
                .serviceDuration,
            height: height,
            width: width,
          ),
        ),
      ),
    );
  }
}
