import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:movie_app/Data.dart';

class PageTwo extends StatefulWidget {
  PageTwo({
    Key key
  }):super(key:key);

  PageTwoState createState() => PageTwoState();
}

class PageTwoState extends State<PageTwo>{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemExtent: 250.0,
      itemBuilder: (context,index)=>Container(
        padding: EdgeInsets.all(12.0),
        child: Material(
          elevation: 4.0,
          borderRadius: BorderRadius.circular(5.0),
          color: index % 2 == 0? Colors.cyan:Colors.deepOrange,
          child:Center(
            child: Text(index.toString()),
          )
        ),
      ),
    );
  }

}
