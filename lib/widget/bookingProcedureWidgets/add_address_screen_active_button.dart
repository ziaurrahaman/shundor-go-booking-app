import 'package:flutter/material.dart';
import 'package:shundor_go/screens/bookingProcedureScreens/add_address.dart';

class AddAddressScreeActiveSaveButton extends StatelessWidget {
  final double height;
  AddAddressScreeActiveSaveButton(this.height);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          InkWell(
            onTap: () =>
                Navigator.of(context).pushNamed(AddAddressScreen.routeName),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.black,
              ),
              child: Center(
                child: Text(
                  'SAVE',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
