import 'package:flutter/material.dart';

class Bubble extends StatelessWidget {
  final String sender;
  final String text;
  final bool isMe;

  const Bubble({Key key, this.sender, this.text, this.isMe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              sender,
              style: const TextStyle(fontSize: 12, color: Colors.white30),
            ),
          ),
          Material(
              borderRadius: isMe
                  ? const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))
                  : const BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
              elevation: 10,
              color: isMe ? Colors.amber : const Color.fromARGB(255, 2, 186, 8),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  text,
                  style: const TextStyle(color: Colors.black, fontSize: 15),
                ),
              )),
        ],
      ),
    );
  }
}
