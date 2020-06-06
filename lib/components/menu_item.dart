import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final IconData inactiveIcon;
  final Color color;
  final Function onPress;
  final bool isActive;
  final Color acive_color;
  final Color inactive_color;

  const MenuItem({Key key, this.icon, this.color, this.onPress, this.isActive, this.inactiveIcon, this.text, this.acive_color, this.inactive_color,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        IconButton(
            icon: Icon(isActive == false ? inactiveIcon : icon ,size: 20,),
            color: isActive == false ? inactive_color: acive_color,
            onPressed: onPress),
        Text(text,
          style: TextStyle(fontWeight: FontWeight.w400, color: isActive == false ? Colors.grey[500]: Colors.white,fontSize: 10),
        )
      ],
    );
  }
}
