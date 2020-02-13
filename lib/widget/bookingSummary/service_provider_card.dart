import 'package:flutter/material.dart';

class ServiceProviderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 0, bottom: 0),
      child: Card(
        elevation: 5,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 80,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, top: 8),
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
                    padding: const EdgeInsets.only(right: 0, top: 16),
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
                leading:
                    Image.asset('assets/images/service_provider_image.png'),
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
    );
  }
}
