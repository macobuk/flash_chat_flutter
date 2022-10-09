import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../widgets/rounded_button_widget.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome';
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    animation = CurvedAnimation(parent: controller, curve: Curves.bounceIn);

    controller.forward();

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: SizedBox(
                    height: animation.value * 100,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
                AnimatedTextKit(animatedTexts: [
                  TypewriterAnimatedText(
                    'Flash Chat',
                    textStyle: const TextStyle(
                      color: Color.fromARGB(255, 1, 206, 8),
                      fontSize: 45.0,
                      fontWeight: FontWeight.w900,
                    ),
                  )
                ]),
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            RoundButtonWidget(
                color: Colors.amberAccent,
                text: 'Log In',
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(context, LoginScreen.id);
                  });
                }),
            RoundButtonWidget(
                color: Colors.amber,
                text: 'Register',
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(context, RegistrationScreen.id);
                  });
                })
          ],
        ),
      ),
    );
  }
}
