import 'package:flutter/material.dart';
import 'package:shundor_go/dummyData/service_provider_profile_screen_listview_dummy_data.dart';
import 'package:shundor_go/widget/servicesScreen/service_provider_profile_screen_listview_item.dart';
import 'package:shundor_go/widget/servicesScreen/service_provider_screen_listview_item.dart';

class ServiceProviderProfileScreen extends StatelessWidget {
  static const routeName = 'service_provider_profile_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(
            Icons.cancel,
            color: Colors.white,
          ),
          onPressed: null,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 20,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 16, right: 10),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Service Provider 1',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            'Joined in August 2019',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Icon(
                                Icons.verified_user,
                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                'Verified',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 20,
                    child: CircleAvatar(
                      child: Image.asset(
                        'assets/images/service_provier_profile_image.png',
                        fit: BoxFit.cover,
                      ),
                      radius: 30,
                      backgroundColor: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          // SizedBox(
          //   height: 10,
          // ),
          Divider(
            color: Colors.grey,
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          Expanded(
            flex: 15,
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: const Color(0xFFD4AF37),
                          ),
                          Text(
                            '4.51',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 2),
                        child: Text(
                          'Ratings',
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '130',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 5),
                        child: Text(
                          'Reviews',
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                      )
                    ],
                  ),
                  Column(children: <Widget>[
                    Text(
                      '124',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 5),
                      child: Text(
                        'Orders Completed',
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    )
                  ]),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16,
                top: 10,
              ),
              child: Text(
                'Reviews',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
          Expanded(
              flex: 39,
              child: ListView.builder(
                itemCount:
                    SERVICE_PROVIDER_PROFILE_SCREEN_LISTVIEW_DUMMY_DATA.length,
                itemBuilder: (ctx, index) =>
                    ServiceProviderProfileScreenListviewItem(
                  imagePath:
                      SERVICE_PROVIDER_PROFILE_SCREEN_LISTVIEW_DUMMY_DATA[index]
                          .imagePath,
                  userName:
                      SERVICE_PROVIDER_PROFILE_SCREEN_LISTVIEW_DUMMY_DATA[index]
                          .userName,
                  reviewDate:
                      SERVICE_PROVIDER_PROFILE_SCREEN_LISTVIEW_DUMMY_DATA[index]
                          .reviewDate,
                  review:
                      SERVICE_PROVIDER_PROFILE_SCREEN_LISTVIEW_DUMMY_DATA[index]
                          .review,
                  ratings:
                      SERVICE_PROVIDER_PROFILE_SCREEN_LISTVIEW_DUMMY_DATA[index]
                          .ratings,
                ),
              )),
          Expanded(
            flex: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 10),
                  child: Text(
                    'Load more reviews',
                    style: TextStyle(
                        color: const Color(0xFFD4AF37),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Report this profile',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
