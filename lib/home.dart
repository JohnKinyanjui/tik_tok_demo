import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktokdemo/components/center_button.dart';
import 'package:tiktokdemo/constants.dart';
import 'package:tiktokdemo/components/menu_item.dart';
import 'package:tiktokdemo/screens/screen_discovery.dart';
import 'package:tiktokdemo/screens/screen_home.dart';
import 'package:tiktokdemo/screens/screen_inbox.dart';
import 'package:tiktokdemo/screens/screen_me.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Choosed_items choosed_items = Choosed_items.home;
  List <Widget>screens = [
    ScreenHome(),
    ScreenDiscovery(),
    ScreenInbox(),
    ScreenMe()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
   int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:PageStorage(bucket: bucket, child: screens[index]),
      bottomNavigationBar: Container(
        height: 61,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: dark_color))
        ),
        child: Row(
          children: <Widget>[
            Expanded(child: MenuItem(
              text: "Home",
              icon: FontAwesomeIcons.home,
              inactiveIcon: FeatherIcons.home,
              acive_color: Colors.white,
              inactive_color: Colors.grey[500],
              isActive: choosed_items == Choosed_items.home ? true : false,
              onPress: (){
                setState(() {
                  index = 0;
                  choosed_items = Choosed_items.home;
                });
              },
            )),
            Expanded(child: MenuItem(
              text: "Discover",
              icon: FontAwesomeIcons.search,
              inactiveIcon: FeatherIcons.search,
              acive_color: Colors.white,
              inactive_color: Colors.grey[500],
              isActive: choosed_items == Choosed_items.discover ? true : false,
              onPress: (){
                setState(() {
                  index = 1;
                  choosed_items = Choosed_items.discover;
                });
              },
            )),
            CenterButton(),
            Expanded(child: MenuItem(
              text: "Inbox",
              icon: FontAwesomeIcons.inbox,
              inactiveIcon: FeatherIcons.inbox,
              acive_color: Colors.white,
              inactive_color: Colors.grey[500],
              isActive: choosed_items == Choosed_items.inbox ? true : false,
              onPress: (){
                setState(() {
                  index = 2;
                  choosed_items = Choosed_items.inbox;
                });
              },
            )),
            Expanded(child: MenuItem(
              text: "me",
              icon: FontAwesomeIcons.user,
              inactiveIcon: FeatherIcons.user,
              acive_color: Colors.white,
              inactive_color: Colors.grey[500],
              isActive: choosed_items == Choosed_items.me ? true : false,
              onPress: (){
                setState(() {
                  index = 3;
                  choosed_items = Choosed_items.me;
                });
              },
            ))
          ],
        ),
      ),
    );
  }
}

enum Choosed_items {
  home,
  discover,
  inbox,
  me
}

enum choosed_mains {
  home,
  others
}