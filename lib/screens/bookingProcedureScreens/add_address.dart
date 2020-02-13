import 'package:flutter/material.dart';
import 'package:shundor_go/screens/bookingProcedureScreens/location_founded_by_google_screen.dart';
// import 'package:shundor_go/widget/bookingProcedureWidgets/add_address_screen_active_button.dart';
// import 'package:shundor_go/widget/bookingProcedureWidgets/add_address_screen_inactive_button.dart';

class AddAddressScreen extends StatefulWidget {
  static const routeName = 'add_address_screen';
  @override
  _AddAddressScreenState createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {
  final adressInputController = TextEditingController();
  final addressDetailsController = TextEditingController();
  final saveAsController = TextEditingController();
  String address;
  String addressDetails;
  String saveAs;
  bool isAdressfieldNull = false;

  void checkAddressTextfield() {
    setState(() {
      address = adressInputController.text.toString();
      if (address == null) {
        isAdressfieldNull = false;
        print('false');
      } else {
        isAdressfieldNull = true;
        print('true');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final appbar = AppBar(
      title: const Text(
        'Add Address',
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
    );
    double height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        appbar.preferredSize.height;
    return Scaffold(
        appBar: appbar,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                height: height * .90,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 20, bottom: 20),
                            child: const Text(
                              'Address on Map',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: const Text(
                            'Change',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFFD4AF37)),
                          ),
                        )
                      ],
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/location_screen_Image.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, top: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            'Adress',
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, top: 0, bottom: 0),
                      child: TextField(
                        controller: adressInputController,
                        decoration:
                            InputDecoration(hintText: 'Type your address'),
                        onSubmitted: (_) => checkAddressTextfield(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, top: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            'Flat\/Building\/Landmark(optional)',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, top: 0, bottom: 0),
                      child: TextField(
                        controller: addressDetailsController,
                        decoration: InputDecoration(
                            hintText: 'e.g. beside jame masjid'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, top: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            'Save as',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                      ),
                      child: TextField(
                        controller: saveAsController,
                        decoration: InputDecoration(),
                      ),
                    ),
                  ],
                ),
              ),
              isAdressfieldNull
                  ? Container(
                      height: height * 0.10,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          InkWell(
                            onTap: () => Navigator.of(context).pushNamed(
                                LocationFoundedByGoogleScreen.routeName),
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.black,
                              ),
                              child: Center(
                                child: const Text(
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
                    )
                  : Container(
                      height: height * 0.10,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.grey,
                            ),
                            child: Center(
                              child: const Text(
                                'SAVE',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
            ],
          ),
        ));
  }
}
