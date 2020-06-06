import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScreenInbox extends StatefulWidget {
  @override
  _ScreenInboxState createState() => _ScreenInboxState();
}

class _ScreenInboxState extends State<ScreenInbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("All Activity",style: TextStyle(fontSize: 18, color: Colors.black),),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(FeatherIcons.send, color: Colors.black),
          )
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
        children: <Widget>[
          Text("Yesterday",style: TextStyle(fontWeight: FontWeight.w600, color: Colors.grey[800]),),
          Row(
            children: <Widget>[
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey, width: 1)
                ),
                child: Icon(FontAwesomeIcons.ticketAlt),
              ),
              SizedBox(width: 10,),
              RichText(text: TextSpan(
                style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w800),
                text: "TikTok: ",
                children: <TextSpan>[
                  TextSpan(text: '#jirani',style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.w300))
                ],
              ),
              )
            ],
          )
        ],
      )),
    );
  }
}
