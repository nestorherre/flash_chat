import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MessageBubble extends StatelessWidget {
  MessageBubble({this.message, this.sender, this.myMessage});
  final String message;
  final String sender;
  final bool myMessage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
            myMessage ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            sender,
            style: TextStyle(fontSize: 12.0, color: Colors.black87),
          ),
          Material(
            color: myMessage ? Colors.lightBlueAccent : Colors.white,
            elevation: 5.0,
            borderRadius: BorderRadius.only(
              topLeft: myMessage ? Radius.circular(30.0) : Radius.circular(0),
              topRight: myMessage ? Radius.circular(0) : Radius.circular(30.0),
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Text(
                '$message',
                style: TextStyle(
                    fontSize: 15.0,
                    color: myMessage ? Colors.white : Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
