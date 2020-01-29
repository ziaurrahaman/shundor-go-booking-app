import 'package:flutter/material.dart';

class ServiceProviderProfileScreenListviewItem extends StatelessWidget {
  final String imagePath;
  final String userName;
  final String reviewDate;
  final String review;
  final double ratings;
  ServiceProviderProfileScreenListviewItem(
      {this.imagePath,
      this.userName,
      this.reviewDate,
      this.ratings,
      this.review});

  // Widget numberOfStarToShow(double number) {
  //   var starIcons =[]
  //   for (var i = 0; i <= number; i++) {
  //     return Icon(
  //       Icons.star,
  //       color: const Color(0xFFD4AF37),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 70,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    child: Image.asset(
                        'assets/images/service_provier_profile_image.png'),
                  ),
                  title: Text(
                    userName,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Text(
                    reviewDate,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5, left: 16),
                  child: Text(
                    review,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 14),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 30,
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.star,
                  size: 20,
                  color: const Color(0xFFD4AF37),
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: const Color(0xFFD4AF37),
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: const Color(0xFFD4AF37),
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: const Color(0xFFD4AF37),
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: const Color(0xFFD4AF37),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
