import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flutter/material.dart';

import 'bubble_widget.dart';

class MessageStreamBuilder extends StatelessWidget {
  const MessageStreamBuilder({
    Key key,
    @required FirebaseFirestore firestore,
  })  : _firestore = firestore,
        super(key: key);

  final FirebaseFirestore _firestore;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream:
          _firestore.collection('messages').orderBy('timestamp').snapshots(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.amber,
            ),
          );
        }
        final messages = snapshot.data.docs.reversed;
        List<Bubble> messageBubbles = [];
        for (var message in messages) {
          final messageText = message.data()['text'];
          final sender = message.data()['sender'];

          final currentUser = loggedInUser.email;

          if (currentUser == sender) {}

          final messageBubble = Bubble(
            sender: sender,
            text: messageText,
            isMe: currentUser == sender,
          );
          messageBubbles.add(messageBubble);
        }
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
            child: ListView(
              reverse: true,
              children: messageBubbles,
            ),
          ),
        );
      },
    );
  }
}
