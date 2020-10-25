import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/Data.dart';

class PageThird extends StatefulWidget {
  final List<Data> dataList;

  //Line to define this class
  PageThird(
      {Key key, this.dataList //must initialize the dataList in the class define
      })
      : super(key: key);

  PageThirdState createState() => PageThirdState();
}

class PageThirdState extends State<PageThird> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.dataList.length,
        itemBuilder: (context, index) {
          return ExpansionTile(
            key: PageStorageKey('${widget.dataList[index].id}'),
            title: Text(widget.dataList[index].title),
            // onExpansionChanged: (b) => setState(() {
            //       widget.dataList[index].expanded = b;
            //       PageStorage.of(context).writeState(context, b,
            //           identifier: ValueKey(
            //             '${widget.dataList[index].id}',
            //           ));
            //     }),
            // initiallyExpanded: widget.dataList[index].expanded,
            //  PageStorage.of(context).readState(
            //           context,
            //           identifier: ValueKey(
            //             '${widget.dataList[index].id}',
            //           ),
            //         ) ??
            //     false,
            children: <Widget>[
              Container(
                color: index % 2 == 0 ? Colors.redAccent : Colors.lightBlue,
                height: 100.0,
              ),
            ],
          );
        });
  }
}
