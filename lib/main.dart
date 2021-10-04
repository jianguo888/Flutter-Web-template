// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_web/analyricsPage.dart';
import 'package:flutter_web/sidenavbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Row(
            children: <Widget>[
              Container(
                child: SideNavBar(),
              ),
              Expanded(
                child: AnalyticsPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
