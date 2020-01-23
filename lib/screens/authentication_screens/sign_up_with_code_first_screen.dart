import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
// import '../widget/code_sign_up_inactive_continue_button.dart';
// import '../widget/sign_up_active_continue_button.dart';
import 'package:shundor_go/widget/code_sign_up_inactive_continue_button.dart';
import 'package:shundor_go/widget/sign_up_active_continue_button.dart';

class SignUpWithCodeFirstScreen extends StatefulWidget {
  static const routeName = '/first_signUp_screen';

  @override
  _SignUpWithCodeFirstScreenState createState() =>
      _SignUpWithCodeFirstScreenState();
}

class _SignUpWithCodeFirstScreenState extends State<SignUpWithCodeFirstScreen> {
  bool isPinGiven = false;
  final pinCodeController = TextEditingController();
  String pinCode;
  void showPincode() {
    setState(() {
      if (pinCode != null && pinCode.length == 6)
        pinCode = pinCodeController.text.toString();
      isPinGiven = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final mobileNumber = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Enter your code',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: <Widget>[
          // SizedBox(
          //   height: 16,
          // ),
          Container(
            padding: EdgeInsets.all(18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.edit,
                  // color: Colors.yellowAccent,
                  color: const Color(0xFFD4AF37),
                  size: 24,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  mobileNumber,
                  style: TextStyle(
                      color: const Color(0xFFD4AF37),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(14),
            // margin: EdgeInsets.only(left: 16),
            // padding: EdgeInsets.only(left: 0, right: 0),
            // margin: EdgeInsets.only(left: 16, right: 0),
            // margin: EdgeInsets.only(left: 14, right: 10),
            // margin: EdgeInsets.only(
            //   left: 8,
            // ),
            // padding: EdgeInsets.all(16),
            child: PinCodeTextField(
              hasTextBorderColor: const Color(
                0xFFe0e0e0,
              ),
              pinTextStyle:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              wrapAlignment: WrapAlignment.spaceAround,
              maxLength: 6,
              controller: pinCodeController,
              keyboardType: TextInputType.text,
              onDone: (_) => showPincode(),
              autofocus: true,
              pinBoxWidth: 50,
              pinBoxHeight: 50,
              pinBoxOuterPadding: EdgeInsets.only(left: 8, right: 8),
              pinBoxColor: const Color(
                0xFFe0e0e0,
              ),
              defaultBorderColor: const Color(
                0xFFe0e0e0,
              ),
            ),
          ),
          isPinGiven
              ? SignUpPageActiveContinueButton()
              : SignUpPageInactiveContinueButton(),
          InkWell(
            child: Container(
              margin: EdgeInsets.only(top: 8),
              child: Center(
                child: Text(
                  'I didn\'t get a code',
                  style: TextStyle(
                      color: const Color(0xFFD4AF37),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: 'Tap Continue to accept Facebook/’s '),
                    TextSpan(
                        text: ' Terms',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationThickness: 2.5,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => print('Terms  clicked')),
                    TextSpan(text: ' ,'),
                    TextSpan(
                        text: ' Data Policy,',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationThickness: 2.5,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => print('Data Policy is clicked')),
                    TextSpan(
                        text: ' cookie use,',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationThickness: 2.5,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => print(' cookie use is clicked')),
                    TextSpan(text: ' and the'),
                    TextSpan(
                        text: ' Privacy Policy',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationThickness: 2.5),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => print('privacy policy is clicked')),
                    TextSpan(text: ' and '),
                    TextSpan(
                        text: 'Terms of Servic',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationThickness: 2.5),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => print('Terms of Service is Clicked')),
                    TextSpan(text: ' of Shundorgo')
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
