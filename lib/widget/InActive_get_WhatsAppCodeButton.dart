import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class InActiveGetWhatsAppCodeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 14, right: 10),
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(shape: BoxShape.rectangle, color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            MdiIcons.whatsapp,
            color: Colors.black,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            'Get a WhatsApp code',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
          )
        ],
      ),
    );
  }
}
