import 'package:flutter/material.dart';
import 'package:shundor_go/widget/profileScreen/account_details_screen_item.dart';

class AccountDetailsScreen extends StatelessWidget {
  static const routeName = 'account_details_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Account Details',
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            AccountDetailsScreenItem('Name', 'Shahruk Khan'),
            AccountDetailsScreenItem('Phone Number', '+01679714001'),
            AccountDetailsScreenItem('Email', 'ziaurrahaman939@gmail.com'),
            AccountDetailsScreenItem('Gender', 'Mail'),
            AccountDetailsScreenItem('Date', '2/13/2020'),
            AccountDetailsScreenItem('Facebook', 'Connected'),
            AccountDetailsScreenItem('Google', 'Connected'),
          ],
        ),
      ),
    );
  }
}
