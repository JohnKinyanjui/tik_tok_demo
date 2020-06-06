import 'package:flutter/material.dart';
import 'package:tiktokdemo/constants.dart';

class ProfileTikTok extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: red.withOpacity(0.5),
          shape: BoxShape.circle
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(

            decoration: BoxDecoration(
                color: red,
                shape: BoxShape.circle
            ),
            child: Center(child: Text("N",style: TextStyle(color: Colors.white),)),
          ),
        ),
      ),
    );
  }
}
