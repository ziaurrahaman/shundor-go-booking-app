import 'package:flutter/material.dart';
import 'package:shundor_go/dummyData/review_screen_listview_dummy_data.dart';
import 'package:shundor_go/widget/bottomNavigationWidget/review_screen_listview_item.dart';

class ReviewScreen extends StatelessWidget {
  static const routeName = 'review_screen';

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
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
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
    final double height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        appBar.preferredSize.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar,
      body: Container(
        child: SafeArea(
          child: ListView.builder(
            itemCount: REVIEW_SCEEEN_LISTVIEW_DUMMY_DATA.length,
            itemBuilder: (ctx, index) => ReviewScreenListviewItem(
              imagePath: REVIEW_SCEEEN_LISTVIEW_DUMMY_DATA[index].userImagePath,
              serviceProvider:
                  REVIEW_SCEEEN_LISTVIEW_DUMMY_DATA[index].serviceProvider,
              serviceTitle:
                  REVIEW_SCEEEN_LISTVIEW_DUMMY_DATA[index].serviceTitle,
              numberOfStar:
                  REVIEW_SCEEEN_LISTVIEW_DUMMY_DATA[index].numberOfStar,
              review: REVIEW_SCEEEN_LISTVIEW_DUMMY_DATA[index].review,
              height: height,
              width: width,
            ),
          ),
        ),
      ),
    );
  }
}
