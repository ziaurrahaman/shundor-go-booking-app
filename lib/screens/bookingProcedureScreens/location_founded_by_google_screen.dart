import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:shundor_go/screens/bookingProcedureScreens/booking_summary_screen.dart';

class LocationFoundedByGoogleScreen extends StatelessWidget {
  static const routeName = 'location_founded_by_google_screen';
  @override
  Widget build(BuildContext context) {
    var appbar = AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
        ),
        onPressed: () => Navigator.of(context).pop(),
        color: Colors.white,
      ),
      centerTitle: true,
      title: Text('LOCATION SCREEN'),
      backgroundColor: Colors.black,
    );
    double height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        appbar.preferredSize.height;
    return Scaffold(
      appBar: appbar,
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: height * 0.90,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 75,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'AVAILABLE ADRESS',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 25,
                        child: Text(
                          'Add Adress',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFFD4AF37),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Icon(
                          MdiIcons.checkboxBlankCircleOutline,
                          color: Colors.grey,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Home',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 5),
                            child: Text(
                              '107, Rajarbag, Sajahanpur, Dahaka-1214',
                              style: TextStyle(fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Icon(
                          MdiIcons.checkboxBlankCircleOutline,
                          color: const Color(0xFFD4AF37),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Office',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 5),
                            child: Text(
                              '107, Rajarbag, Sajahanpur, Dahaka-1214',
                              style: TextStyle(fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () => Navigator.of(context)
                  .pushNamed(BookingSummaryScreen.routeName),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black, shape: BoxShape.rectangle),
                height: height * 0.10,
                width: double.infinity,
                child: Center(
                  child: Text(
                    'PROCEED',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    // Column(
    //   children: <Widget>[
    //     Expanded(
    //       child: Container(
    //         child: Column(
    //           children: <Widget>[
    //             SizedBox(
    //               height: 20,
    //             ),
    //             Row(
    //               children: <Widget>[
    //                 Expanded(
    //                   flex: 75,
    //                   child: Padding(
    //                     padding: const EdgeInsets.only(left: 20),
    //                     child: Text(
    //                       'AVAILABLE ADRESS',
    //                       style: TextStyle(fontSize: 14, color: Colors.black),
    //                     ),
    //                   ),
    //                 ),
    //                 Expanded(
    //                   flex: 25,
    //                   child: Text(
    //                     'Add Adress',
    //                     style: TextStyle(
    //                       fontSize: 16,
    //                       fontWeight: FontWeight.bold,
    //                       color: const Color(0xFFD4AF37),
    //                     ),
    //                   ),
    //                 )
    //               ],
    //             ),
    //             SizedBox(
    //               height: 30,
    //             ),
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.start,
    //               children: <Widget>[
    //                 Padding(
    //                   padding: const EdgeInsets.only(left: 16),
    //                   child: Icon(
    //                     MdiIcons.checkboxBlankCircleOutline,
    //                     color: Colors.grey,
    //                   ),
    //                 ),
    //                 Column(
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: <Widget>[
    //                     Padding(
    //                       padding: const EdgeInsets.only(left: 20),
    //                       child: Text(
    //                         'Home',
    //                         style: TextStyle(
    //                             fontSize: 20, fontWeight: FontWeight.bold),
    //                       ),
    //                     ),
    //                     Padding(
    //                       padding: const EdgeInsets.only(left: 20, top: 5),
    //                       child: Text(
    //                         '107, Rajarbag, Sajahanpur, Dahaka-1214',
    //                         style: TextStyle(fontSize: 16),
    //                       ),
    //                     )
    //                   ],
    //                 ),
    //               ],
    //             ),
    //             SizedBox(
    //               height: 20,
    //             ),
    //             SizedBox(
    //               height: 30,
    //             ),
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.start,
    //               children: <Widget>[
    //                 Padding(
    //                   padding: const EdgeInsets.only(left: 16),
    //                   child: Icon(
    //                     MdiIcons.checkboxBlankCircleOutline,
    //                     color: const Color(0xFFD4AF37),
    //                   ),
    //                 ),
    //                 Column(
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: <Widget>[
    //                     Padding(
    //                       padding: const EdgeInsets.only(left: 20),
    //                       child: Text(
    //                         'Office',
    //                         style: TextStyle(
    //                             fontSize: 20, fontWeight: FontWeight.bold),
    //                       ),
    //                     ),
    //                     Padding(
    //                       padding: const EdgeInsets.only(left: 20, top: 5),
    //                       child: Text(
    //                         '107, Rajarbag, Sajahanpur, Dahaka-1214',
    //                         style: TextStyle(fontSize: 16),
    //                       ),
    //                     )
    //                   ],
    //                 ),
    //               ],
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //     Column(
    //       mainAxisAlignment: MainAxisAlignment.end,
    //       children: <Widget>[
    //         Container(
    //           height: height * 0.10,
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.end,
    //             children: <Widget>[
    //               Container(
    //                 height: 50,
    //                 width: double.infinity,
    //                 decoration: BoxDecoration(
    //                   shape: BoxShape.rectangle,
    //                   color: Colors.black,
    //                 ),
    //                 child: Center(
    //                   child: Text(
    //                     'PROCEED',
    //                     style: TextStyle(
    //                         fontSize: 18,
    //                         fontWeight: FontWeight.bold,
    //                         color: Colors.white),
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ],
    //     )
    //   ],
    // ),
    // );
  }
}
