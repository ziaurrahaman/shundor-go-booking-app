import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shundor_go/widget/InActive_get_WhatsAppCodeButton.dart';
import 'package:shundor_go/widget/acitve_get_whatsAppCodeButton.dart';
import 'package:shundor_go/widget/active_use_sms_code_button.dart';
import 'package:shundor_go/widget/in_active_use_sms_code_button.dart';
// import '../widget/drop_down_widget.dart';

class MobileSignUPScreen extends StatefulWidget {
  static const routeName = '/mobile_signup_screen';

  @override
  _MobileSignUPScreenState createState() => _MobileSignUPScreenState();
}

class _MobileSignUPScreenState extends State<MobileSignUPScreen> {
  bool isNumberVerified = false;

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
  final mobileNumberInputController = TextEditingController();
  String mobileNumber;
  String countryCodeSelctedByUser;
  void verifyMobileNumberWithCountryCode() {
    setState(() {
      if (mobileNumberInputController.text == null ||
          mobileNumberInputController.text.length < 11 ||
          countryCode == null) {
        isNumberVerified = false;
      } else {
        isNumberVerified = true;
        mobileNumber = countryCode.toString() +
            mobileNumberInputController.text.toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.black,
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text(
            'Enter your mobile number',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 8,
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(16),
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(color: Colors.black, width: 2)),
                    child: DropdownButton<String>(
                      focusColor: Colors.black,
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                      ),
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
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(0),
                      margin: const EdgeInsets.only(right: 10),
                      child: TextField(
                        controller: mobileNumberInputController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: const BorderRadius.all(Radius.zero),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(width: 2),
                            borderRadius: const BorderRadius.all(
                              Radius.zero,
                            ),
                          ),
                          hintText: 'Enter you phone number here',
                          focusColor: Colors.black,
                        ),
                        onSubmitted: (_) {
                          verifyMobileNumberWithCountryCode();
                        },
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        const TextSpan(
                            style: TextStyle(),
                            text:
                                'Shundor go uses Account Kit, a Facebokk technology, to Help you sign in. You dont\'t need a Facebook account. Message and data rates may apply.'),
                        TextSpan(
                            text: 'Lear how Facebook use your info',
                            style: TextStyle(
                              decorationThickness: 2.5,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => print('Text is clicked'))
                      ],
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              isNumberVerified
                  ? ActiveGetWhatsAppCodeButton(mobileNumber)
                  : InActiveGetWhatsAppCodeButton(),
              const SizedBox(
                height: 10,
              ),
              isNumberVerified
                  ? ActiveUseSmsCodeButton(mobileNumber)
                  : InActiveUseSmsCodeButton()
            ],
          ),
        ));
  }
}
