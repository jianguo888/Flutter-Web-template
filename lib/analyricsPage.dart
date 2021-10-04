import 'package:ant_icons/ant_icons.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/topBar.dart';
import 'package:flutter_web/chart.dart';
import 'package:flutter_web/lineChart.dart';
import 'package:ionicons/ionicons.dart';
import 'package:rating_bar/rating_bar.dart';

class AnalyticsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var extraLargeScreenGrid = currentWidth > 1536;
    var largeScreenGrid = currentWidth > 1366;
    var smallScreenGrid = currentWidth > 1201;
    var tabScreenGrid = currentWidth > 769;

    return Container(
      alignment: Alignment.topLeft,
      color: Colors.black12.withOpacity(0.03),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: 25.0, top: 90.0, right: 25.0, bottom: 12.5),
                  child: new GridView.count(
                    crossAxisCount: extraLargeScreenGrid
                        ? 4
                        : tabScreenGrid
                            ? 2
                            : 1,
                    childAspectRatio: 3.5,
                    mainAxisSpacing: 20.0,
                    crossAxisSpacing: 20.0,
                    padding: EdgeInsets.all(02.0),
                    shrinkWrap: true,
                    children: [
                      Container(
                        child: Material(
                          elevation: 02.0,
                          borderRadius: BorderRadius.circular(03.0),
                          child: Container(
                            color: Colors.blue[300],
                            height: 120.0,
                            padding: EdgeInsets.all(0.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding:
                                                EdgeInsets.only(left: 15.0),
                                            child: Text(
                                              'Revenue',
                                              style: TextStyle(
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding:
                                                EdgeInsets.only(left: 15.0),
                                            child: Text(
                                              '\$1000k',
                                              style: TextStyle(
                                                fontSize: 40.0,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 120.0,
                                  height: 120.0,
                                  child: Icon(
                                    AntIcons.dollar,
                                    size: 50.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Material(
                          elevation: 02.0,
                          borderRadius: BorderRadius.circular(03.0),
                          child: Container(
                            color: Colors.red[300],
                            height: 120.0,
                            padding: EdgeInsets.all(0.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding:
                                                EdgeInsets.only(left: 15.0),
                                            child: Text(
                                              'Total Orders',
                                              style: TextStyle(
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding:
                                                EdgeInsets.only(left: 15.0),
                                            child: Text(
                                              '1230',
                                              style: TextStyle(
                                                fontSize: 40.0,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 120.0,
                                  height: 120.0,
                                  child: Icon(
                                    FeatherIcons.tag,
                                    size: 50.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Material(
                          elevation: 02.0,
                          borderRadius: BorderRadius.circular(03.0),
                          child: Container(
                            color: Colors.orange[300],
                            height: 120.0,
                            padding: EdgeInsets.all(0.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding:
                                                EdgeInsets.only(left: 15.0),
                                            child: Text(
                                              'Messages',
                                              style: TextStyle(
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding:
                                                EdgeInsets.only(left: 15.0),
                                            child: Text(
                                              '608',
                                              style: TextStyle(
                                                fontSize: 40.0,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 120.0,
                                  height: 120.0,
                                  child: Icon(
                                    Ionicons.mail_outline,
                                    size: 50.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Material(
                          elevation: 02.0,
                          borderRadius: BorderRadius.circular(03.0),
                          child: Container(
                            color: Colors.indigo[300],
                            height: 120.0,
                            padding: EdgeInsets.all(0.0),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black12, width: 01.0),
                                borderRadius: BorderRadius.circular(03.0),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding:
                                                  EdgeInsets.only(left: 15.0),
                                              child: Text(
                                                'Customers',
                                                style: TextStyle(
                                                  fontSize: 15.0,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding:
                                                  EdgeInsets.only(left: 15.0),
                                              child: Text(
                                                '2700k',
                                                style: TextStyle(
                                                  fontSize: 40.0,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 120.0,
                                    height: 120.0,
                                    child: Icon(
                                      Ionicons.people_outline,
                                      size: 50.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 25.0, top: 12.5, right: 25.0, bottom: 12.5),
                  child: new GridView.count(
                    crossAxisCount: largeScreenGrid ? 2 : 1,
                    childAspectRatio: 1.8,
                    padding: const EdgeInsets.all(02.0),
                    mainAxisSpacing: 20.0,
                    crossAxisSpacing: 20.0,
                    semanticChildCount: 2,
                    shrinkWrap: true,
                    children: [
                      Container(
                        child: Material(
                          elevation: 02.0,
                          borderRadius: BorderRadius.circular(03.0),
                          child: Container(
                            padding: EdgeInsets.all(25.0),
                            child: LineChartSample2(),
                          ),
                        ),
                      ),
                      Container(
                        child: Material(
                          elevation: 02.0,
                          borderRadius: BorderRadius.circular(03.0),
                          child: Container(
                            padding: EdgeInsets.all(02.0),
                            child: Center(
                              child: PieChartSample2(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 25.0, top: 12.5, right: 25.0, bottom: 20.0),
                  child: new GridView.count(
                    crossAxisCount: extraLargeScreenGrid
                        ? 3
                        : smallScreenGrid
                            ? 2
                            : 1,
                    childAspectRatio: 01.0,
                    mainAxisSpacing: 20.0,
                    crossAxisSpacing: 20.0,
                    semanticChildCount: 2,
                    padding: const EdgeInsets.all(02.0),
                    shrinkWrap: true,
                    children: [
                      Container(
                        child: Material(
                          elevation: 02.0,
                          borderRadius: BorderRadius.circular(03.0),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        left: 15.0, top: 15.0, bottom: 05.0),
                                    child: Text(
                                      'Most Recent chats',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                                Divider(),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: 10.0, top: 10.0),
                                      child: Row(
                                        children: [
                                          Container(
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.black12,
                                                  width: 01.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(50.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(03.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50.0),
                                                  child: Image.network(
                                                    'https://cdn.pixabay.com/photo/2017/11/02/14/26/model-2911330_960_720.jpg',
                                                    fit: BoxFit.cover,
                                                    height: 40.0,
                                                    width: 40.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.only(
                                                    left: 05.0, top: 0.0),
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    5,
                                                child: Text('Agastya'),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(
                                                    left: 05.0, top: 0.0),
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    5,
                                                child: Text(
                                                  'we are looking for buying.',
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 13.0),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 0.3,
                                      color: Colors.black12.withOpacity(0.2),
                                      alignment: Alignment.topRight,
                                      margin: EdgeInsets.only(left: 60.0),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: 10.0, top: 10.0),
                                      child: Row(
                                        children: [
                                          Container(
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.black12,
                                                  width: 01.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(50.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(03.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50.0),
                                                  child: Image.network(
                                                    'https://cdn.pixabay.com/photo/2014/05/03/00/56/summerfield-336672_960_720.jpg',
                                                    fit: BoxFit.cover,
                                                    height: 40.0,
                                                    width: 40.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.only(
                                                    left: 05.0, top: 0.0),
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    5,
                                                child: Text('Anvika'),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(
                                                    left: 05.0, top: 0.0),
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    5,
                                                child: Text(
                                                  'Gooddd',
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 13.0),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 0.3,
                                      color: Colors.black12.withOpacity(0.2),
                                      alignment: Alignment.topRight,
                                      margin: EdgeInsets.only(left: 60.0),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: 10.0, top: 10.0),
                                      child: Row(
                                        children: [
                                          Container(
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.black12,
                                                  width: 01.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(50.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(03.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50.0),
                                                  child: Image.network(
                                                    'https://cdn.pixabay.com/photo/2014/07/31/22/50/photographer-407068_960_720.jpg',
                                                    fit: BoxFit.cover,
                                                    height: 40.0,
                                                    width: 40.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.only(
                                                    left: 05.0, top: 0.0),
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    5,
                                                child: Text('Brinda'),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(
                                                    left: 05.0, top: 0.0),
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    5,
                                                child: Text(
                                                  'Nice products!!',
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 13.0),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 0.3,
                                      color: Colors.black12.withOpacity(0.2),
                                      alignment: Alignment.topRight,
                                      margin: EdgeInsets.only(left: 60.0),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: 10.0, top: 10.0),
                                      child: Row(
                                        children: [
                                          Container(
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.black12,
                                                  width: 01.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(50.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(03.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50.0),
                                                  child: Image.network(
                                                    'https://cdn.pixabay.com/photo/2018/08/04/20/48/woman-3584435_960_720.jpg',
                                                    fit: BoxFit.cover,
                                                    height: 40.0,
                                                    width: 40.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.only(
                                                    left: 05.0, top: 0.0),
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    5,
                                                child: Text('Chhaya'),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(
                                                    left: 05.0, top: 0.0),
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    5,
                                                child: Text(
                                                  'The price is too high.',
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 13.0),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 0.3,
                                      color: Colors.black12.withOpacity(0.2),
                                      alignment: Alignment.topRight,
                                      margin: EdgeInsets.only(left: 60.0),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: 10.0, top: 10.0),
                                      child: Row(
                                        children: [
                                          Container(
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.black12,
                                                  width: 01.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(50.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(03.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50.0),
                                                  child: Image.network(
                                                    'https://cdn.pixabay.com/photo/2018/01/15/07/52/woman-3083390_960_720.jpg',
                                                    fit: BoxFit.cover,
                                                    height: 40.0,
                                                    width: 40.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.only(
                                                    left: 05.0, top: 0.0),
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    5,
                                                child: Text('Binita'),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(
                                                    left: 05.0, top: 0.0),
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    5,
                                                child: Text(
                                                  'How much?',
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 13.0),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 0.3,
                                      color: Colors.black12.withOpacity(0.2),
                                      alignment: Alignment.topRight,
                                      margin: EdgeInsets.only(left: 60.0),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: 10.0, top: 10.0),
                                      child: Row(
                                        children: [
                                          Container(
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.black12,
                                                  width: 01.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(50.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(03.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50.0),
                                                  child: Image.network(
                                                    'https://cdn.pixabay.com/photo/2020/04/25/15/04/girl-5091173_960_720.jpg',
                                                    fit: BoxFit.cover,
                                                    height: 40.0,
                                                    width: 40.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.only(
                                                    left: 05.0, top: 0.0),
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    5,
                                                child: Text('Aarna'),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(
                                                    left: 05.0, top: 0.0),
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    5,
                                                child: Text(
                                                  'Just awesome..',
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 13.0),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 0.3,
                                      color: Colors.black12.withOpacity(0.2),
                                      alignment: Alignment.topRight,
                                      margin: EdgeInsets.only(left: 60.0),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Material(
                        elevation: 02.0,
                        borderRadius: BorderRadius.circular(03.0),
                        child: Container(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: 15.0, top: 15.0, bottom: 05.0),
                                  child: Text(
                                    'Reviews',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              Divider(),
                              Column(
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.only(left: 10.0, top: 10.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(03.0),
                                          child: Image.network(
                                            'https://images-na.ssl-images-amazon.com/images/I/71H0XjpOZPL._SL1500_.jpg',
                                            fit: BoxFit.cover,
                                            height: 40.0,
                                            width: 40.0,
                                          ),
                                        ),
                                        Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(
                                                  left: 05.0, top: 0.0),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  5,
                                              child: Text(
                                                'Samsung Galaxy M42 5G (Prism Dot Gray, 6GB RAM0',
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                  left: 05.0, top: 20.0),
                                              child: RatingBar.readOnly(
                                                initialRating: 4.5,
                                                isHalfAllowed: true,
                                                halfFilledIcon: Icons.star_half,
                                                filledIcon: Icons.star,
                                                filledColor: Colors.orange,
                                                emptyIcon: Icons.star_border,
                                                size: 14.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 0.3,
                                    color: Colors.black12.withOpacity(0.2),
                                    alignment: Alignment.topRight,
                                    margin: EdgeInsets.only(left: 60.0),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.only(left: 10.0, top: 10.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(03.0),
                                          child: Image.network(
                                            'https://images-na.ssl-images-amazon.com/images/I/71WuDXpTAlL._SL1500_.jpg',
                                            fit: BoxFit.cover,
                                            height: 40.0,
                                            width: 40.0,
                                          ),
                                        ),
                                        Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(
                                                  left: 05.0, top: 0.0),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  5,
                                              child: Text(
                                                'HP 15 Entry Level 15.6-inch (39.62 cms) HD Laptop',
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                  left: 05.0, top: 20.0),
                                              child: RatingBar.readOnly(
                                                initialRating: 3.5,
                                                isHalfAllowed: true,
                                                halfFilledIcon: Icons.star_half,
                                                filledIcon: Icons.star,
                                                emptyIcon: Icons.star_border,
                                                filledColor: Colors.orange,
                                                size: 14.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 0.3,
                                    color: Colors.black12.withOpacity(0.2),
                                    alignment: Alignment.topRight,
                                    margin: EdgeInsets.only(left: 60.0),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.only(left: 10.0, top: 10.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(03.0),
                                          child: Image.network(
                                            'https://images-na.ssl-images-amazon.com/images/I/71bmFRQaYCL._SL1500_.jpg',
                                            fit: BoxFit.cover,
                                            height: 40.0,
                                            width: 40.0,
                                          ),
                                        ),
                                        Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(
                                                  left: 05.0, top: 0.0),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  5,
                                              child: Text(
                                                'ASUS VivoBook 14 (2020) Intel Core',
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                  left: 05.0, top: 20.0),
                                              child: RatingBar.readOnly(
                                                initialRating: 5.0,
                                                isHalfAllowed: true,
                                                halfFilledIcon: Icons.star_half,
                                                filledIcon: Icons.star,
                                                emptyIcon: Icons.star_border,
                                                filledColor: Colors.orange,
                                                size: 14.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 0.3,
                                    color: Colors.black12.withOpacity(0.2),
                                    alignment: Alignment.topRight,
                                    margin: EdgeInsets.only(left: 60.0),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Material(
                          elevation: 02.0,
                          borderRadius: BorderRadius.circular(03.0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: 20.0, top: 15.0, bottom: 05.0),
                                  width: 500.0,
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Views Analytics',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              Divider(),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(
                                      left: 20.0,
                                      top: 10.0,
                                      right: 20.0,
                                      bottom: 10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.only(right: 10.0),
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.black12
                                                    .withOpacity(0.05),
                                                width: 01.5,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  child: Text(
                                                    'Total Views',
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 12.0),
                                                  ),
                                                ),
                                                Container(
                                                  child: Text(
                                                    '29000k',
                                                    style: TextStyle(
                                                      fontSize: 40.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.purple,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.only(left: 10.0),
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.black12
                                                    .withOpacity(0.05),
                                                width: 01.5,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  child: Text(
                                                    'Unique Views',
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 12.0),
                                                  ),
                                                ),
                                                Container(
                                                  child: Text(
                                                    '500k',
                                                    style: TextStyle(
                                                      fontSize: 40.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.blue,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(
                                      left: 20.0,
                                      top: 10.0,
                                      right: 20.0,
                                      bottom: 10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.only(right: 10.0),
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.black12
                                                    .withOpacity(0.05),
                                                width: 01.5,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  child: Text(
                                                    'Weekly Views',
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 12.0),
                                                  ),
                                                ),
                                                Container(
                                                  child: Text(
                                                    '6500k',
                                                    style: TextStyle(
                                                      fontSize: 40.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.indigo,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.only(left: 10.0),
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.black12
                                                    .withOpacity(0.05),
                                                width: 01.5,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  child: Text(
                                                    'Monthly Views',
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 12.0),
                                                  ),
                                                ),
                                                Container(
                                                  child: Text(
                                                    '21000k',
                                                    style: TextStyle(
                                                      fontSize: 40.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.pink,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 65.0,
            color: Colors.white,
            child: Material(
              elevation: 2.0,
              child: TopBar(),
            ),
          ),
        ],
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
