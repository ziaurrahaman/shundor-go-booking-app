import 'package:flutter/material.dart';
import 'package:shundor_go/screens/expolreScreenServices/service_provider_profile_screen.dart';

class ServiceProviderScreenListviewItem extends StatelessWidget {
  final String imagePath;
  final String serviceProviderName;
  final String ratings;
  final String noOfOrderCompleted;
  final String serviceCost;
  final String serviceDuration;

  ServiceProviderScreenListviewItem(
      {this.imagePath,
      this.serviceProviderName,
      this.ratings,
      this.noOfOrderCompleted,
      this.serviceCost,
      this.serviceDuration});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
          padding: EdgeInsets.only(left: 8, right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(flex: 15, child: Image.asset(imagePath)),
              Expanded(
                flex: 45,
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
                flex: 30,
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
                    Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle, color: Colors.black),
                      child: Center(
                        child: Text(
                          'BOOK',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
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
