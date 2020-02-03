import 'package:flutter/material.dart';
import 'package:shundor_go/dummyData/dummy_data_for_woma_explore_screen_listview_with_icon.dart';
import 'package:shundor_go/widget/womanExploreScreenWidget/woman_explore_sceen_listview_item_with_icon.dart';
import 'package:shundor_go/dummyData/popular_offer_list_for_woman_dummy_data.dart';
import 'package:shundor_go/widget/womanExploreScreenWidget/popular_offer_for_woman_list_item.dart';

class WomanExploreScreenContent extends StatefulWidget {
  final double height;
  final double width;
  WomanExploreScreenContent(this.height, this.width);
  @override
  _WomanExploreScreenContentState createState() =>
      _WomanExploreScreenContentState(height, width);
}

class _WomanExploreScreenContentState extends State<WomanExploreScreenContent> {
  double height;
  double width;
  _WomanExploreScreenContentState(this.height, this.width);
  @override
  Widget build(BuildContext context) {
    // return Column(
    //   children: <Widget>[
    //     Expanded(
    //       flex: 10,
    //       child: Container(
    //         padding: EdgeInsets.only(left: 8),
    //         child: ListView.builder(
    //           itemExtent: 105,
    //           scrollDirection: Axis.horizontal,
    //           itemCount: WOMAN_EXPLORE_SCREEN_LISTS_WITH_ICON_DATA.length,
    //           itemBuilder: (ctx, index) => WomanExploreScreenListItemWithIcon(
    //             WOMAN_EXPLORE_SCREEN_LISTS_WITH_ICON_DATA[index].title,
    //             WOMAN_EXPLORE_SCREEN_LISTS_WITH_ICON_DATA[index].gridImagePath,
    //             index,
    //           ),
    //         ),
    //       ),
    //     ),
    //     Expanded(
    //       flex: 10,
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.start,
    //         children: <Widget>[
    //           Padding(
    //             padding: const EdgeInsets.only(left: 5),
    //             child: Image.asset(
    //               'assets/images/experience_shundorgo_image.png',
    //               fit: BoxFit.cover,
    //               width: 400,
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //     Expanded(
    //       flex: 2,
    //       child: Row(
    //         crossAxisAlignment: CrossAxisAlignment.end,
    //         mainAxisAlignment: MainAxisAlignment.start,
    //         children: <Widget>[
    //           Container(
    //             padding: EdgeInsets.only(
    //               left: 18,
    //             ),
    //             child: Text(
    //               'Popular Offers For You',
    //               textAlign: TextAlign.center,
    //               style: TextStyle(
    //                   fontSize: 18,
    //                   fontWeight: FontWeight.bold,
    //                   color: Colors.black),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //     Expanded(
    //       flex: 14,
    //       child: ListView.builder(
    //         scrollDirection: Axis.horizontal,
    //         itemCount: POPULAR_OFFER_FOR_WOMAN_LIST_DUMMY_DAT.length,
    //         itemBuilder: (ctx, index) => WomanExploreScreenPopularOfferListItem(
    //             imagePath: POPULAR_OFFER_FOR_WOMAN_LIST_DUMMY_DAT[index]
    //                 .popularOfferListImagePath,
    //             title: POPULAR_OFFER_FOR_WOMAN_LIST_DUMMY_DAT[index]
    //                 .popularOfferListTitle,
    //             cost: POPULAR_OFFER_FOR_WOMAN_LIST_DUMMY_DAT[index]
    //                 .popularOfferListServiceCost),
    //       ),
    //     )
    //   ],
    // );

    return Column(
      children: <Widget>[
        Container(
          height: height * 0.25,
          padding: EdgeInsets.only(left: 8),
          child: ListView.builder(
            itemExtent: 105,
            scrollDirection: Axis.horizontal,
            itemCount: WOMAN_EXPLORE_SCREEN_LISTS_WITH_ICON_DATA.length,
            itemBuilder: (ctx, index) => WomanExploreScreenListItemWithIcon(
              WOMAN_EXPLORE_SCREEN_LISTS_WITH_ICON_DATA[index].title,
              WOMAN_EXPLORE_SCREEN_LISTS_WITH_ICON_DATA[index].gridImagePath,
              index,
            ),
          ),
        ),
        Container(
          height: height * 0.25,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Image.asset(
                  'assets/images/experience_shundorgo_image.png',
                  fit: BoxFit.cover,
                  width: width * 0.98,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: height * 0.05,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 18, top: height * 0.01),
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
          padding: EdgeInsets.only(top: height * 0.02),
          height: height * 0.45,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: POPULAR_OFFER_FOR_WOMAN_LIST_DUMMY_DAT.length,
            itemBuilder: (ctx, index) => WomanExploreScreenPopularOfferListItem(
                imagePath: POPULAR_OFFER_FOR_WOMAN_LIST_DUMMY_DAT[index]
                    .popularOfferListImagePath,
                title: POPULAR_OFFER_FOR_WOMAN_LIST_DUMMY_DAT[index]
                    .popularOfferListTitle,
                cost: POPULAR_OFFER_FOR_WOMAN_LIST_DUMMY_DAT[index]
                    .popularOfferListServiceCost),
          ),
        ),
      ],
    );
  }
}
