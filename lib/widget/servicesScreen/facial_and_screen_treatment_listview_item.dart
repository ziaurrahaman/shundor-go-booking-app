import 'package:flutter/material.dart';
import 'package:shundor_go/screens/expolreScreenServices/service_provider_screen.dart';

class FacialAndSkinTreatmentScreenListviewItem extends StatelessWidget {
  final String tile;
  final String cost;
  final String duration;
  final double height;
  final double width;

  FacialAndSkinTreatmentScreenListviewItem(
      {this.tile, this.cost, this.duration, this.height, this.width});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Navigator.of(context).pushNamed(ServiceProvidersScreen.routeName),
      child: Container(
        margin: const EdgeInsets.only(top: 3, bottom: 3),
        child: Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      tile,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    flex: 60,
                  ),
                  Expanded(
                    flex: 45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            children: <Widget>[
                              Text(
                                '\৳ $cost',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '$duration min',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 40,
                          width: width * 0.2,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle, color: Colors.black),
                          child: Center(
                            child: const Text(
                              'BOOK',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
