import 'package:flutter/material.dart';

class FacialAndSkinTreatmentScreenListviewItem extends StatelessWidget {
  final String tile;
  final String cost;
  final String duration;
  FacialAndSkinTreatmentScreenListviewItem(
      {this.tile, this.cost, this.duration});
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
                  child: Text(
                    tile,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  flex: 60,
                ),
                Expanded(
                  flex: 40,
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
                        width: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle, color: Colors.black),
                        child: Center(
                          child: Text(
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
    );
  }
}