import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class InActiveGetWhatsAppCodeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 14, right: 10),
      padding: const EdgeInsets.all(14),
      decoration:
          const BoxDecoration(shape: BoxShape.rectangle, color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Icon(
            MdiIcons.whatsapp,
            color: Colors.black,
          ),
          const SizedBox(
            width: 8,
          ),
          const Text(
            'Get a WhatsApp code',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
          )
        ],
      ),
    );
  }
}
