import 'package:flutter/material.dart';

class ReviewScreenListviewItem extends StatelessWidget {
  final String imagePath;
  final String serviceProvider;
  final String serviceTitle;
  final int numberOfStar;
  final String review;

  ReviewScreenListviewItem(
      {this.imagePath,
      this.serviceProvider,
      this.serviceTitle,
      this.numberOfStar,
      this.review});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 78,
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Image.asset(imagePath),
                        radius: 20,
                      ),
                      title: Text(
                        serviceProvider,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      subtitle: Text(
                        serviceTitle,
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 22,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle, color: Colors.black),
                          child: Center(
                            child: Text(
                              'Edit',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 3, right: 3),
                              child: Image.asset(
                                  'assets/images/review_star_Image.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 3, right: 3),
                              child: Image.asset(
                                  'assets/images/review_star_Image.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 3, right: 3),
                              child: Image.asset(
                                  'assets/images/review_star_Image.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 3, right: 3),
                              child: Image.asset(
                                  'assets/images/review_star_Image.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 3, right: 3),
                              child: Image.asset(
                                  'assets/images/review_star_Image.png'),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                review,
                style: TextStyle(fontSize: 14, color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
