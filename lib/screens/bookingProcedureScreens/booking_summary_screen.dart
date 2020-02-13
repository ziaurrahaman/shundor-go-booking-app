import 'package:flutter/material.dart';
import 'package:shundor_go/screens/bookingProcedureScreens/payment_screen.dart';
import 'package:shundor_go/widget/bookingSummary/location_widget.dart';
import 'package:shundor_go/widget/bookingSummary/service_card.dart';
import 'package:shundor_go/widget/bookingSummary/service_provider_card.dart';
import 'package:shundor_go/widget/bookingSummary/shedule_widget.dart';

class BookingSummaryScreen extends StatelessWidget {
  static const routeName = 'booking_summary_screen';

  @override
  Widget build(BuildContext context) {
    final appbar = AppBar(
      backgroundColor: Colors.black,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
      centerTitle: true,
      title: Text(
        'Summary',
        style: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
    double height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        appbar.preferredSize.height;
    // double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: appbar,
      body: Column(
        children: <Widget>[
          Container(
            height: height * 0.90,
            child: Column(
              children: <Widget>[
                SheduleWidget(),
                LocationCard(),
                ServiceProviderCard(),
                ServiceCard(),
              ],
            ),
          ),
          InkWell(
            onTap: () =>
                Navigator.of(context).pushNamed(PaymentScreen.routeName),
            child: Container(
              decoration:
                  BoxDecoration(color: Colors.black, shape: BoxShape.rectangle),
              height: height * 0.10,
              width: double.infinity,
              child: Center(
                child: Text(
                  'PLACE ORDER',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
