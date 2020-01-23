import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  @override
  _DropDownWidgetState createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  var _countryCodes = [
    '+ 94',
    '+91',
    '+92',
    '+88',
    '+60',
    '+1',
    '+44',
    '+1',
    '+61',
    '+94'
  ];
  String countryCode;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(shape: BoxShape.rectangle, border: Border.all(color: Colors.black, width: 2)),
      child: DropdownButton<String>(
        focusColor: Colors.black,
        icon: Icon(Icons.arrow_drop_down, color: Colors.black,),
        items: _countryCodes.map((dorpDownItem) {
          return DropdownMenuItem<String>(
            
            value: dorpDownItem,
            child: Text(dorpDownItem),
          );
        }).toList(),
        onChanged: (selectedCountryCode) {
          setState(() {
            this.countryCode = selectedCountryCode;
          });
        },
        value: countryCode,
      ),
    );
  }
}
