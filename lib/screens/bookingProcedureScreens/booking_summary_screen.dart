import 'package:flutter/material.dart';
import 'package:shundor_go/screens/bookingProcedureScreens/placement_screen.dart';

class BookingSummaryScreen extends StatelessWidget {
  static const routeName = 'booking_summary_screen';
  final appbar = AppBar(
    backgroundColor: Colors.black,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        color: Colors.white,
      ),
      onPressed: null,
    ),
    centerTitle: true,
    title: Text(
      'Summary',
      style: TextStyle(
          color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
    ),
  );

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        appbar.preferredSize.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: appbar,
      body: Column(
        children: <Widget>[
          Container(
            height: height * 0.90,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 8, top: 8, right: 8, bottom: 0),
                  child: Card(
                    elevation: 5,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                  flex: 80,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 16,
                                    ),
                                    child: Text(
                                      'SCHEDULE',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
                                  )),
                              Expanded(
                                flex: 20,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 0),
                                  child: Text(
                                    'Change',
                                    style: TextStyle(
                                        color: const Color(0xFFD4AF37),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 16, top: 8),
                                  child: Text(
                                    'Schedule Date',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Text(
                                    'Schedule Time',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 16,
                                            right: 16,
                                            top: 8,
                                            bottom: 8),
                                        child: Text(
                                          '07',
                                          style: TextStyle(
                                              fontSize: 32,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'Sep 2019',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.black),
                                          ),
                                          Text(
                                            'Sat',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.black),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                    child: Row(
                                  children: <Widget>[
                                    Text(
                                      '12:00',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 32,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'PM',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black),
                                    )
                                  ],
                                )),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 8, right: 8, bottom: 0, top: 0),
                  child: Card(
                    elevation: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 80,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 16, top: 8),
                                child: Text(
                                  'LOCATION',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 20,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 0, top: 16),
                                child: Text(
                                  'Change',
                                  style: TextStyle(
                                      color: const Color(0xFFD4AF37),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, top: 8),
                          child: Text('Office'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16, top: 8, bottom: 8),
                          child: Text(
                            'Plot 11,Main Road, Block A',
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 8, right: 8, top: 0, bottom: 0),
                  child: Card(
                    elevation: 5,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 80,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 16, top: 8),
                                child: Text(
                                  'SERVICE PROVIDER',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 20,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 0, top: 16),
                                child: Text(
                                  'Change',
                                  style: TextStyle(
                                      color: const Color(0xFFD4AF37),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4, bottom: 4),
                          child: ListTile(
                            leading: Image.asset(
                                'assets/images/service_provider_image.png'),
                            title: Text(
                              'Service Provider 1',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      color: const Color(0xFFD4AF37),
                                      size: 18,
                                    ),
                                    Text(
                                      '4.51',
                                    )
                                  ],
                                ),
                                Text('265 orders completed')
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Card(
                    elevation: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 16, top: 8),
                              child: Text(
                                'SERVICES',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 80,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 16, top: 4),
                                child: Text(
                                    'Nail cut, file and polish hand and feet'),
                              ),
                            ),
                            Expanded(
                              flex: 20,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text('\৳ 500'),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 0, bottom: 0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Divider(
                                  endIndent: 8,
                                  indent: 8,
                                  color: Colors.grey,
                                  thickness: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2, bottom: 2),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 80,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: Text(
                                    'Total',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 20,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text(
                                    '\৳ 500',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 0, bottom: 0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Divider(
                                  endIndent: 8,
                                  indent: 8,
                                  color: Colors.grey,
                                  thickness: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2, bottom: 2),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  flex: 80,
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 16),
                                        child: Text(
                                          'Discount',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Text(
                                          'apply promos',
                                          style: TextStyle(
                                              color: const Color(0xFFD4AF37),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    ],
                                  )),
                              Expanded(
                                flex: 20,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text(
                                    '\৳ 0',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 0, bottom: 0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Divider(
                                  endIndent: 8,
                                  indent: 8,
                                  color: Colors.grey,
                                  thickness: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2, bottom: 2),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  flex: 80,
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 16),
                                        child: Text(
                                          'Amount Payable',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                              Expanded(
                                flex: 20,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text(
                                    '\৳ 0',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        // ListTile(
                        //   leading: Text('Nail cut, file and polish hand and feet'),
                        //   title: Row(
                        //     mainAxisAlignment: MainAxisAlignment.end,
                        //     children: <Widget>[Text('\৳ 500')],
                        //   ),
                        // ),
                        // ListTile(
                        //   leading: Text(
                        //     'Total',
                        //     style: TextStyle(
                        //         fontWeight: FontWeight.bold, color: Colors.black),
                        //   ),
                        //   title: Row(
                        //     mainAxisAlignment: MainAxisAlignment.end,
                        //     children: <Widget>[
                        //       Text(
                        //         '\৳ 500',
                        //         style: TextStyle(fontWeight: FontWeight.bold),
                        //       )
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () =>
                Navigator.of(context).pushNamed(PaymentScreen.routeName),
            child: Container(
              decoration:
                  BoxDecoration(color: Colors.black, shape: BoxShape.rectangle),
              height: height * 0.10,
              width: double.infinity,
              child: Center(
                child: Text(
                  'PLACE ORDER',
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
    );
  }
}
