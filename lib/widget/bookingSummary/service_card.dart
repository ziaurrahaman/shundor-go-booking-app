import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    padding: const EdgeInsets.only(left: 16, top: 4),
                    child: Text('Nail cut, file and polish hand and feet'),
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
                            color: Colors.black, fontWeight: FontWeight.bold),
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
                            padding: const EdgeInsets.only(left: 16),
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
                            color: Colors.black, fontWeight: FontWeight.bold),
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
                            padding: const EdgeInsets.only(left: 16, bottom: 8),
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
                            color: Colors.black, fontWeight: FontWeight.bold),
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
    );
  }
}
