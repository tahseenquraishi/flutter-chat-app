import 'package:chat_app_practice_1/constant.dart';
import 'package:chat_app_practice_1/style.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff5b61b9),
      body: ListView(
        children: [customAppBar(context), header(), chatArea(context)],
      ),
    );
  }

  Container chatArea(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height - 255,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(40)),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height - 355,
              padding: EdgeInsets.only(top: 50, left: 40, right: 40),
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) => 
                  messages[index]['from'] == 'sender' ? sender(messages[index]['message'], messages[index]['time']) : receiver(messages[index]['message'], messages[index]['time'])
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey[200],
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  hintText: 'Type your message...',
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RawMaterialButton(
                      constraints: BoxConstraints(minWidth: 0),
                      onPressed: () {},
                      elevation: 2.0,
                      fillColor: Color(0xff5b61b9),
                      child: Icon(Icons.send, size: 22.0, color: Colors.white),
                      padding: EdgeInsets.all(10.0),
                      shape: CircleBorder(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  Padding header() {
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PrimaryText(
            text: 'Tannaz\nSaddegi',
            fontSize: 32,
            color: Colors.white,
            fontWeight: FontWeight.w900,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RawMaterialButton(
                constraints: BoxConstraints(minWidth: 0),
                onPressed: () {},
                elevation: 2.0,
                fillColor: Colors.white38,
                child: Icon(Icons.call, size: 24.0, color: Colors.white),
                padding: EdgeInsets.all(10.0),
                shape: CircleBorder(),
              ),
              SizedBox(width: 10),
              RawMaterialButton(
                constraints: BoxConstraints(minWidth: 0),
                onPressed: () {},
                elevation: 2.0,
                fillColor: Colors.white38,
                child: Icon(Icons.video_call, size: 24.0, color: Colors.white),
                padding: EdgeInsets.all(10.0),
                shape: CircleBorder(),
              )
            ],
          )
        ],
      ),
    );
  }

  Padding customAppBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FlatButton(
              child: PrimaryText(text: 'Back', color: Colors.white54),
              onPressed: () => {Navigator.pop(context)}),
          FlatButton(
              child: PrimaryText(text: 'Search', color: Colors.white54),
              onPressed: null),
        ],
      ),
    );
  }

  Widget sender(String message, String time) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: Row(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: PrimaryText(
                text: time, color: Colors.grey[400], fontSize: 14),
          ),
          Container(
            constraints: BoxConstraints(minWidth: 100, maxWidth: 280),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
                color: Colors.blueGrey[50],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(0))),
            child: PrimaryText(
              text: message,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }

  Widget receiver(String message, String time) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Avatar(avatarUrl: 'assets/avatar-1.png', width: 30, height: 30),
              Container(
                constraints: BoxConstraints(minWidth: 100, maxWidth: 200),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                    color: Colors.blueGrey[50],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(25))),
                child: PrimaryText(
                  text: message,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: PrimaryText(
                text: time, color: Colors.grey[400], fontSize: 14),
          ),
        ],
      ),
    );
  }
}
