import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:movie_app/Data.dart';
import 'package:movie_app/home/PageHome.dart';
import 'package:movie_app/home/PageTwo.dart';
import 'package:movie_app/home/PageThird.dart';
/**
 * Dart file to handle bottom navigation pages (fragments)
 * */
class MainHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MainHomeState();
  }
}

class _MainHomeState extends State<MainHome>{
  final Key keyHome = PageStorageKey('pageHome');
  final Key keySecondPage= PageStorageKey('pageSecond');
  final Key keyThirdPage = PageStorageKey('pageThird');

  int currentTabIndex = 0;
  int PRE_TAB_INDEX = -1;

  List<Widget> pages;
  Widget currentPage;
  PageHome pageHome;
  PageTwo pageTwo;
  PageThird pageThird;

  List<Data> dataList;
  final PageStorageBucket storageBucket=PageStorageBucket();

  @override
  void initState(){

    pageHome = PageHome(key:keyHome,dataList:getList());
    pageTwo = PageTwo(key:keySecondPage);
    pageThird = PageThird(key:keyThirdPage,dataList:getList());

    pages = [pageHome,pageTwo,pageThird];
    currentPage=pageHome;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: PageStorage(
          child: currentPage,
          bucket: storageBucket
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentTabIndex,
          onTap:(int tabIndex){
            setState(() {
              currentTabIndex = tabIndex;
              currentPage=pages[tabIndex];
            });
          },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.animation),
            label: 'Second Tab',//title:Text() is deprecated
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.adb),
            label: 'Third Tab'
          )
        ],
      ),
    );
  }

  List<Data> getList(){
    return dataList=[
      Data(1, false, "Example-1"),
      Data(2, false, "Example-2"),
      Data(3, false, "Example-3"),
      Data(4, false, "Example-4"),
      Data(5, false, "Example-5"),
      Data(6, false, "Example-6"),
      Data(7, false, "Example-7"),
      Data(8, false, "Example-8"),
      Data(9, false, "Example-9"),
      Data(10, false, "Example-10"),
    ];
  }

}

@override
Future<bool> onBackPressed() async{
  //Map<int, int> tabIndexMapping = MemoryKey().tabIndexMapping();
}

