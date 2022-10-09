import 'package:flash_chat/constants.dart';
import 'package:flutter/material.dart';

import '../widgets/rounded_button_widget.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration';
  const RegistrationScreen({Key key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: SizedBox(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            TextField(
                onChanged: (value) {
                  //Do something with the user input.
                },
                decoration:
                    kTextInputDecoration.copyWith(hintText: 'Enter an email')),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
                onChanged: (value) {
                  //Do something with the user input.
                },
                decoration: kTextInputDecoration.copyWith(
                    hintText: 'Enter a password')),
            const SizedBox(
              height: 24.0,
            ),
            RoundButtonWidget(
                color: Colors.amber, text: 'Register', onPressed: () {})
          ],
        ),
      ),
    );
  }
}
