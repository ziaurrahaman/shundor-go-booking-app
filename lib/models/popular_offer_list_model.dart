import 'package:flutter/foundation.dart';

class PopularOfferListModel {
  final String popularOfferListImagePath;
  final String popularOfferListTitle;
  final String popularOfferListServiceCost;

  const PopularOfferListModel(
      {@required this.popularOfferListImagePath,
      @required this.popularOfferListTitle,
      @required this.popularOfferListServiceCost});
}
