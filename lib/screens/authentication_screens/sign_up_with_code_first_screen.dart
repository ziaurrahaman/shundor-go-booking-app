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
    final appbar = AppBar(
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
    );
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height -
        appbar.preferredSize.height -
        MediaQuery.of(context).padding.top;
    final mobileNumber = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
        appBar: appbar,
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[
              // SizedBox(
              //   height: 16,
              // ),
              Container(
                padding: EdgeInsets.only(
                    left: width * 0.02,
                    right: width * 0.02,
                    top: height * 0.02,
                    bottom: height * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Icon(
                      Icons.edit,
                      // color: Colors.yellowAccent,
                      color: const Color(0xFFD4AF37),
                      size: 24,
                    ),
                    SizedBox(
                      width: width * 0.01,
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
                margin: EdgeInsets.only(
                    left: width * 0.02,
                    right: width * 0.02,
                    top: height * 0.02,
                    bottom: height * 0.02),
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
                  pinTextStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  wrapAlignment: WrapAlignment.spaceAround,
                  maxLength: 6,
                  controller: pinCodeController,
                  keyboardType: TextInputType.text,
                  onDone: (_) => showPincode(),
                  autofocus: true,
                  pinBoxWidth: 50,
                  pinBoxHeight: 50,
                  pinBoxOuterPadding: EdgeInsets.only(
                      left: width * 0.002, right: width * 0.002),
                  pinBoxColor: const Color(
                    0xFFe0e0e0,
                  ),
                  defaultBorderColor: const Color(
                    0xFFe0e0e0,
                  ),
                ),
              ),
              isPinGiven
                  ? SignUpPageActiveContinueButton(height, width)
                  : SignUpPageInactiveContinueButton(height, width),
              InkWell(
                child: Container(
                  margin: EdgeInsets.only(top: height * 0.02),
                  child: Center(
                    child: const Text(
                      'I didn\'t get a code',
                      style: TextStyle(
                          color: const Color(0xFFD4AF37),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: width * 0.02, top: width * 0.01, right: width * 0.02),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        const TextSpan(
                            text: 'Tap Continue to accept Facebook/’s '),
                        TextSpan(
                            text: ' Terms',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationThickness: 2.5,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => print('Terms  clicked')),
                        const TextSpan(text: ' ,'),
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
                        const TextSpan(text: ' and the'),
                        TextSpan(
                            text: ' Privacy Policy',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationThickness: 2.5),
                            recognizer: TapGestureRecognizer()
                              ..onTap =
                                  () => print('privacy policy is clicked')),
                        const TextSpan(text: ' and '),
                        TextSpan(
                            text: 'Terms of Servic',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationThickness: 2.5),
                            recognizer: TapGestureRecognizer()
                              ..onTap =
                                  () => print('Terms of Service is Clicked')),
                        const TextSpan(text: ' of Shundorgo')
                      ]),
                ),
              )
            ],
          ),
        ));
  }
}
