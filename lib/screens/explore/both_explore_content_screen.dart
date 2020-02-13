import 'package:flutter/material.dart';
import 'package:shundor_go/dummyData/dummy_grid_data.dart';
import 'package:shundor_go/dummyData/dummy_popular_offer_list_data.dart';
import 'package:shundor_go/widget/expoloreScreenWidget/both_explore_content_screen_list_item.dart';
import 'package:shundor_go/widget/expoloreScreenWidget/both_explore_content_sceen_grid_item.dart';

class BothExploreContentScreen extends StatefulWidget {
  final double height;
  final double width;

  BothExploreContentScreen(this.height, this.width);
  @override
  _BothExploreContentScreenState createState() =>
      _BothExploreContentScreenState(height, width);
}

class _BothExploreContentScreenState extends State<BothExploreContentScreen> {
  final double heigth;
  final double width;
  _BothExploreContentScreenState(this.heigth, this.width);
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        height: heigth * 0.08,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(
                top: 15,
                left: 15,
              ),
              child: const Text(
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

      Container(
          height: heigth * 0.35,
          padding: const EdgeInsets.only(top: 20),
          child: GridView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: MAINEXPLORE_SCREEN_GRIDS.length,
            itemBuilder: (ctx, index) => BothExporeSceenGridItem(
                MAINEXPLORE_SCREEN_GRIDS[index].title,
                MAINEXPLORE_SCREEN_GRIDS[index].gridImagePath),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              childAspectRatio: 0.8,
              crossAxisSpacing: 10,
              mainAxisSpacing: 00,
            ),
          )),

      Container(
        height: heigth * 0.08,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 0, left: 15, bottom: 0),
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

      Container(
        height: heigth * 0.49,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: MAINEXPLORE_CONTENT_SCREEN_LIST.length,
          itemBuilder: (ctx, index) => ExploreContentScreenPopularOfferListItem(
              imagePath: MAINEXPLORE_CONTENT_SCREEN_LIST[index]
                  .popularOfferListImagePath,
              title:
                  MAINEXPLORE_CONTENT_SCREEN_LIST[index].popularOfferListTitle,
              cost: MAINEXPLORE_CONTENT_SCREEN_LIST[index]
                  .popularOfferListServiceCost),
        ),
      ),
      // child: Image.asset(
      //   'assets/images/threading_image.png',
      //   fit: BoxFit.cover,
      // ),
    ]);
  }
}
