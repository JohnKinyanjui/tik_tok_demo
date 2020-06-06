import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktokdemo/dummy_data.dart';

class HorizontalListview extends StatelessWidget {
  final List<String> data;

  const HorizontalListview({Key key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                width: 150,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(data[index]),fit: BoxFit.cover)
                ),
              ),
            );
          }
      ),
    );
  }
}
