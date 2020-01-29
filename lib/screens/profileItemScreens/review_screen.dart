import 'package:flutter/material.dart';
import 'package:shundor_go/dummyData/review_screen_listview_dummy_data.dart';
import 'package:shundor_go/widget/bottomNavigationWidget/review_screen_listview_item.dart';

class ReviewScreen extends StatelessWidget {
  static const routeName = 'review_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Reviews',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: null,
        ),
      ),
      body: Container(
        child: SafeArea(
          child: ListView.builder(
            itemCount: REVIEW_SCEEEN_LISTVIEW_DUMMY_DATA.length,
            itemBuilder: (ctx, index) => ReviewScreenListviewItem(
                imagePath:
                    REVIEW_SCEEEN_LISTVIEW_DUMMY_DATA[index].userImagePath,
                serviceProvider:
                    REVIEW_SCEEEN_LISTVIEW_DUMMY_DATA[index].serviceProvider,
                serviceTitle:
                    REVIEW_SCEEEN_LISTVIEW_DUMMY_DATA[index].serviceTitle,
                numberOfStar:
                    REVIEW_SCEEEN_LISTVIEW_DUMMY_DATA[index].numberOfStar,
                review: REVIEW_SCEEEN_LISTVIEW_DUMMY_DATA[index].review),
          ),
        ),
      ),
    );
  }
}
