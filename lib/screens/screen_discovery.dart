import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktokdemo/components/horizontal_listview.dart';
import 'package:tiktokdemo/dummy_data.dart';

class ScreenDiscovery extends StatefulWidget {
  @override
  _ScreenDiscoveryState createState() => _ScreenDiscoveryState();
}

class _ScreenDiscoveryState extends State<ScreenDiscovery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 40,
                width: double.infinity,
                color: Colors.grey[100].withOpacity(0.5),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(FeatherIcons.search, color: Colors.black,),
                      SizedBox(width: 10,),
                      Text("Search", style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey[500]),),
                      Expanded(child: SizedBox()),
                      Icon(FontAwesomeIcons.qrcode,size: 15,),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Text("#", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                  ),
                  SizedBox(width: 5,),
                  Text("@Nature", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),

                ],
              ),
            ),
            HorizontalListview(
              data: images_one,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Text("#", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                  ),
                  SizedBox(width: 5,),
                  Text("@Pictures", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),

                ],
              ),
            ),
            HorizontalListview(
              data: images_two,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Text("#", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                  ),
                  SizedBox(width: 5,),
                  Text("@Pictures", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),

                ],
              ),
            ),
            HorizontalListview(
              data: images_two,
            )
          ],
        ),
      ),
    );
  }
}
