import 'package:flutter/material.dart';
import 'package:shundor_go/dummyData/booking_screen_listvvie_dummy_data.dart';
import 'package:shundor_go/widget/bottomNavigationWidget/bookinig_screen_listview_item.dart';

class BookingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: ListView.builder(
          itemCount: BOOKING_SCREEN_LISTVIEW_DUMMY_DATA.length,
          itemBuilder: (ctx, index) => BookingScreenListviewItem(
            month: BOOKING_SCREEN_LISTVIEW_DUMMY_DATA[index].month,
            day: BOOKING_SCREEN_LISTVIEW_DUMMY_DATA[index].day,
            time: BOOKING_SCREEN_LISTVIEW_DUMMY_DATA[index].time,
            bookingType: BOOKING_SCREEN_LISTVIEW_DUMMY_DATA[index].bookingType,
            serviceProvider:
                BOOKING_SCREEN_LISTVIEW_DUMMY_DATA[index].serviceProvider,
            servicetitle: BOOKING_SCREEN_LISTVIEW_DUMMY_DATA[index].serviceType,
          ),
        ),
      ),
    );
  }
}
