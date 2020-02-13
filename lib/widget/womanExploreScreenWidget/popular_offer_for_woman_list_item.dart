// import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class WomanExploreScreenPopularOfferListItem extends StatelessWidget {
  final imagePath;
  final title;
  final cost;

  WomanExploreScreenPopularOfferListItem(
      {@required this.imagePath, @required this.title, @required this.cost});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) {
        return Container(
            padding: EdgeInsets.only(left: 16, right: 10, top: 10, bottom: 10),
            decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.rectangle),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  imagePath,
                  width: 244,
                  height: constraints.maxHeight * 0.67,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.05,
                ),
                Container(
                  height: constraints.maxHeight * 0.08,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 2),
                    child: Text(
                      title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  height: constraints.maxHeight * 0.08,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 2),
                    child: Text(
                      'Starting from only \৳ $cost',
                    ),
                  ),
                ),
              ],
            ));
      },
    );
  }
}
