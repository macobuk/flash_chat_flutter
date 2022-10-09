// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class RoundButtonWidget extends StatelessWidget {
  final Color color;
  final String text;
  final Function onPressed;
  const RoundButtonWidget({
    Key key,
    @required this.color,
    this.text = '',
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            text,
            style: const TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
      ),
    );
  }

  //void setState(Null Function() param0) {}
}
