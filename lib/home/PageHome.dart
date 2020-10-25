import 'package:flutter/material.dart';
import 'package:movie_app/Data.dart';

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
              color: index % 2 == 0 ? Colors.orange : Colors.limeAccent,
              height: 100.0,
            ),
          ],
        );
      });
  }
}