import 'package:flutter/material.dart';

class MakeUpScreenListViewItem extends StatelessWidget {
  final String title;
  final String imagePath;

  MakeUpScreenListViewItem(this.title, this.imagePath);
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 4,
        child: ListTile(
            leading: Image.asset(imagePath),
            title: Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 16, bottom: 16),
              child: Text(title,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            )));
  }
}
