import 'package:flutter/material.dart';

class ExploreScreenTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 2),
              child: Text(
                'Find Service at',
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.location_on,
              color: Colors.white,
              size: 16,
            ),
            Text(
              'Bashundhara R\/A',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        )
      ],
    );
  }
}
