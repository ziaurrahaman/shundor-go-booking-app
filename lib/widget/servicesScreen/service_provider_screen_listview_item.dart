import 'package:flutter/material.dart';
import 'package:shundor_go/screens/bookingProcedureScreens/shedule_services_screen.dart';
import 'package:shundor_go/screens/expolreScreenServices/service_provider_profile_screen.dart';

class ServiceProviderScreenListviewItem extends StatelessWidget {
  final String imagePath;
  final String serviceProviderName;
  final String ratings;
  final String noOfOrderCompleted;
  final String serviceCost;
  final String serviceDuration;
  final double height;
  final double width;

  ServiceProviderScreenListviewItem(
      {this.imagePath,
      this.serviceProviderName,
      this.ratings,
      this.noOfOrderCompleted,
      this.serviceCost,
      this.serviceDuration,
      this.height,
      this.width});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(flex: 15, child: Image.asset(imagePath)),
              Expanded(
                flex: 40,
                child: InkWell(
                  onTap: () => Navigator.of(context)
                      .pushNamed(ServiceProviderProfileScreen.routeName),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          serviceProviderName,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: const Color(0xFFD4AF37),
                              size: 16,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                ratings,
                                style: TextStyle(color: Colors.black),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 35,
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          '\৳ $serviceCost',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text('$serviceDuration min')
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () => Navigator.of(context)
                          .pushNamed(SheduleServicesScreen.routeName),
                      child: Container(
                        padding: EdgeInsets.only(left: width * 0.02),
                        height: 45,
                        width: width * 0.2,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle, color: Colors.black),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.only(right: width * 0.009),
                            child: Text(
                              'BOOK',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
