import 'package:flutter/material.dart';
import 'package:shundor_go/dummyData/service_provider_screen_listview_dummy_data.dart';
import 'package:shundor_go/widget/expoloreScreenWidget/explore_screen_tilte.dart';
import 'package:shundor_go/widget/servicesScreen/service_provider_screen_listview_item.dart';

class ServiceProvidersScreen extends StatelessWidget {
  static const routeName = 'service_provider_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: null,
        ),
        title: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: Text(
                    'Find Service at',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.location_on,
                  color: Colors.white,
                  size: 16,
                ),
                Text(
                  'Bashundhara R\/A',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            )
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: SERVICE_PROVIDER_SCREEN_LISTVIEW_DUMMY_DATA.length,
        itemBuilder: (ctx, index) => ServiceProviderScreenListviewItem(
          imagePath: SERVICE_PROVIDER_SCREEN_LISTVIEW_DUMMY_DATA[index]
              .serviceProviderImagePath,
          serviceProviderName:
              SERVICE_PROVIDER_SCREEN_LISTVIEW_DUMMY_DATA[index]
                  .serviceProvider,
          ratings: SERVICE_PROVIDER_SCREEN_LISTVIEW_DUMMY_DATA[index].ratings,
          noOfOrderCompleted: SERVICE_PROVIDER_SCREEN_LISTVIEW_DUMMY_DATA[index]
              .noOfOrderCompleted,
          serviceCost:
              SERVICE_PROVIDER_SCREEN_LISTVIEW_DUMMY_DATA[index].serviceCost,
          serviceDuration: SERVICE_PROVIDER_SCREEN_LISTVIEW_DUMMY_DATA[index]
              .serviceDuration,
        ),
      ),
    );
  }
}
