import 'package:flutter/material.dart';
import 'package:shundor_go/screens/explore/woman_explore_screen.dart';

class BothExporeSceenGridItem extends StatelessWidget {
  final String title;
  final String gridImagePath;

  BothExporeSceenGridItem(this.title, this.gridImagePath);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: null,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Material(
            elevation: 5,
            child: GridTile(
              child: Image.asset(gridImagePath),
              // footer: Padding(
              //   padding: const EdgeInsets.only(top: 10),
              //   child: Text(
              //     title,
              //   ),
              // ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Center(
                child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )),
          )
        ],
      ),
    );
  }
}
