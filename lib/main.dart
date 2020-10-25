import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:movie_app/home/MainHome.dart';

void main() =>runApp(MovieApp());

class MovieApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Movie App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:MainHome(),
    );
  }
}


