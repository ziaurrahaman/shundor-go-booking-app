import 'dart:io';

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
              height: 140,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 2),
              child: Text(
                title,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 2),
              child: Text(
                'Starting from only \৳ $cost',
              ),
            ),
          ],
        ));
  }
}
