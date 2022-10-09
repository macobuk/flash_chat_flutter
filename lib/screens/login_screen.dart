import 'package:flash_chat/constants.dart';
import 'package:flutter/material.dart';

import '../widgets/rounded_button_widget.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login';
  const LoginScreen({Key key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                decoration: kTextInputDecoration.copyWith(
                    hintText: 'Enter your email')),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
                onChanged: (value) {
                  //Do something with the user input.
                },
                decoration: kTextInputDecoration.copyWith(
                    hintText: 'Enter your password')),
            const SizedBox(
              height: 24.0,
            ),
            RoundButtonWidget(
                color: Colors.amber, text: 'Login', onPressed: () {})
          ],
        ),
      ),
    );
  }
}
