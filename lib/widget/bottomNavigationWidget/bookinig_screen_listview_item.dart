import 'package:flutter/material.dart';
import 'package:shundor_go/dummyData/booking_screen_listvvie_dummy_data.dart';

class BookingScreenListviewItem extends StatelessWidget {
  final String month;
  final String day;
  final String time;
  final String bookingType;
  final String serviceProvider;
  final String servicetitle;
  BookingScreenListviewItem(
      {this.month,
      this.day,
      this.time,
      this.bookingType,
      this.serviceProvider,
      this.servicetitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 5),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 20,
                  child: Column(
                    children: <Widget>[
                      Text(
                        month,
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                      Text(
                        day,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        time,
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        bookingType,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFFD4AF37)),
                      ),
                      Text(
                        serviceProvider,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        servicetitle,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  flex: 55,
                ),
                Expanded(
                  flex: 25,
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle, color: Colors.black),
                    child: Center(
                      child: Text(
                        'Details',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
