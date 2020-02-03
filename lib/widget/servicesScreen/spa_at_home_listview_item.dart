import 'package:flutter/material.dart';

class SpaAtHomeListViewItem extends StatelessWidget {
  final String title;
  final String imagePath;

  SpaAtHomeListViewItem(this.title, this.imagePath);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Card(
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: ListTile(
                leading: Image.asset(imagePath),
                title: Padding(
                  padding: const EdgeInsets.only(
                      left: 8, right: 8, top: 16, bottom: 16),
                  child: Text(title,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                )),
          )),
    );
  }
}
