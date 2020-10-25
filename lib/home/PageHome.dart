import 'package:flutter/material.dart';
import 'package:movie_app/Data.dart';
import 'package:movie_app/home/PageTwo.dart';

class PageHome extends StatefulWidget {
  final List<Data> dataList;
  PageHome({
    Key key,
    this.dataList,
  }) : super(key: key);

  @override
  PageHomeState createState() => PageHomeState();
}

class PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(
        children: [
          horizontalList(60.0, 60.0),
          horizontalList(200.0, 200.0),
          verticalListWithCards(),
        ],
      ),
    );
  }

  Widget verticalListWithCards(){
    final int count = 4;
    return ListView.builder(
      shrinkWrap: true,
      itemCount: count ?? 0,
      itemExtent: 110.0,
      itemBuilder: (context,index){
        index+=1;
        return GestureDetector(
            onTap: () => print("$index clicked"),
            child: Card(
                margin: EdgeInsets.all(8.0),
                child:ListTile(
                    title: Text('Motivation $index'),
                    subtitle: Text('this is a description of the motivation')
                )
              /** Can also use Material class here by make Material
               *  a child of Card, then add ListTile as a child to Material*/
            )
        );
      }
    );
  }

  Widget horizontalList(double itemExtent,double height){
    int count = 15;
    return Container(
       margin: EdgeInsets.symmetric(vertical: 8.0),
       height: height,
       child:ListView.builder(
         shrinkWrap: true,
         itemExtent: itemExtent,
         scrollDirection: Axis.horizontal,
         itemCount: count ?? 0,
         itemBuilder: (context,index) {
           index+=1;
           return new GestureDetector(
              onTap: () => print("$index clicked"),
              child: new Card(
                child:new Material(
                    elevation: 4.0,
                    borderRadius: BorderRadius.circular(5.0),
                    color: index % 2 == 0? Colors.orange:Colors.lightGreenAccent,
                    child:Center(
                      child: Text(index.toString()),
                    )
                )
              )
           );
         }
       ),
    );
  }
}