import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktokdemo/constants.dart';
import 'package:tiktokdemo/components/profile_tik_tok.dart';

class ScreenHome extends StatelessWidget {
  double size =30;
  TextStyle tstyle = TextStyle(fontSize: 10, color: Colors.white, fontWeight: FontWeight.w300);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage("https://www.gettyimages.com/gi-resources/images/500px/983794168.jpg"),fit: BoxFit.cover)
          ),
        ),
        Positioned.fill(child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(child: SizedBox()),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("@ Nature - 1 hr ago", style: TextStyle(fontSize: 13, color: Colors.white, fontWeight: FontWeight.w600),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(para, style: tstyle,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("#Nature", style: tstyle,),
                  ),
                  SizedBox(height: 20,)
                ],
              )
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(child: SizedBox()),
                IconButton(icon: Icon(FontAwesomeIcons.solidHeart, size: size, color:red,), onPressed: null),
                SizedBox(height: 5,),
                Text("1.6 likes",style: tstyle,),
                SizedBox(height: 10,),
                IconButton(icon: Icon(FontAwesomeIcons.comments, size: size,color: Colors.white.withOpacity(0.8),), onPressed: null),
                Text("5k cm",style: tstyle,),
                SizedBox(height: 10,),
                IconButton(icon: Icon(FontAwesomeIcons.share, size: size, color: Colors.white.withOpacity(0.8),), onPressed: null),
                SizedBox(height: 10,),
                Text("5k shares",style: tstyle,),
                SizedBox(height: 10,),

                ProfileTikTok(),
              ],
            ),
          ),

        ],))
      ],
    );
  }
}
