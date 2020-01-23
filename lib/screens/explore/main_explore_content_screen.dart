import 'package:flutter/material.dart';
import 'package:shundor_go/dummyData/dummy_grid_data.dart';
import 'package:shundor_go/dummyData/dummy_popular_offer_list_data.dart';
import 'package:shundor_go/widget/expoloreScreenWidget/main_explore_content_screen_list_item.dart';
import 'package:shundor_go/widget/expoloreScreenWidget/main_explore_content_sceen_grid_item.dart';

class MainExploreContentScreen extends StatefulWidget {
  @override
  _MainExploreContentScreenState createState() =>
      _MainExploreContentScreenState();
}

class _MainExploreContentScreenState extends State<MainExploreContentScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  top: 15,
                  left: 15,
                ),
                child: Text(
                  'Discover Our Services',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        Expanded(
            flex: 8,
            child: Container(
                padding: EdgeInsets.only(top: 20),
                child: GridView.builder(
                  padding: EdgeInsets.all(8),
                  itemCount: MAINEXPLORE_SCREEN_GRIDS.length,
                  itemBuilder: (ctx, index) => MainExporeSceenGridItem(
                      MAINEXPLORE_SCREEN_GRIDS[index].title,
                      MAINEXPLORE_SCREEN_GRIDS[index].gridImagePath),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    childAspectRatio: 1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                ))
            // Image.asset(
            //   'assets/images/threading_image.png',
            //   fit: BoxFit.contain,
            //   height: 48,
            //   width: 48,
            // ),
            ),
        Expanded(
          flex: 2,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 15, left: 15, bottom: 15),
                child: Text(
                  'Popular Offers For You',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 10,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: MAINEXPLORE_CONTENT_SCREEN_LIST.length,
            itemBuilder: (ctx, index) =>
                ExploreContentScreenPopularOfferListItem(
                    imagePath: MAINEXPLORE_CONTENT_SCREEN_LIST[index]
                        .popularOfferListImagePath,
                    title: MAINEXPLORE_CONTENT_SCREEN_LIST[index]
                        .popularOfferListTitle,
                    cost: MAINEXPLORE_CONTENT_SCREEN_LIST[index]
                        .popularOfferListServiceCost),
          ),
          // child: Image.asset(
          //   'assets/images/threading_image.png',
          //   fit: BoxFit.cover,
          // ),
        )
      ],
    );
  }
}
