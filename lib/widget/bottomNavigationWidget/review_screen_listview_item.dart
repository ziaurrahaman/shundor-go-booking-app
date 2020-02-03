import 'package:flutter/material.dart';

class ReviewScreenListviewItem extends StatelessWidget {
  final String imagePath;
  final String serviceProvider;
  final String serviceTitle;
  final int numberOfStar;
  final String review;
  final double height;
  final double width;

  ReviewScreenListviewItem(
      {this.imagePath,
      this.serviceProvider,
      this.serviceTitle,
      this.numberOfStar,
      this.review,
      this.height,
      this.width});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
                    flex: 73,
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
                    flex: 27,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          height: 45,
                          width: width * 0.2,
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
                              padding: EdgeInsets.only(
                                  left: width * 0.007, right: width * 0.007),
                              child: Image.asset(
                                  'assets/images/review_star_Image.png'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: width * 0.007, right: width * 0.007),
                              child: Image.asset(
                                  'assets/images/review_star_Image.png'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: width * 0.007, right: width * 0.007),
                              child: Image.asset(
                                  'assets/images/review_star_Image.png'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: width * 0.007, right: width * 0.007),
                              child: Image.asset(
                                  'assets/images/review_star_Image.png'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: width * 0.007, right: width * 0.007),
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
