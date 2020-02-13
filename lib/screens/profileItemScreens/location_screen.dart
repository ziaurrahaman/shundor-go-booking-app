import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  static const routeName = 'location_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Location',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 75,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: const Text(
                    'AVAILABLE ADRESS',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
              ),
              Expanded(
                flex: 25,
                child: const Text(
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
          const SizedBox(
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: const Text(
                  'Dhaka, Bangladesh',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: const Text(
                  '107, Rajarbag, Sajahanpur, Dahaka-1214',
                  style: TextStyle(fontSize: 16),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
