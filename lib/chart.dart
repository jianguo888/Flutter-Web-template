import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:ionicons/ionicons.dart';

class PieChartSample2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        setState(() {
          touchedIndex = -1;
        });
      },
      hoverColor: Colors.white,
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(right: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(touchCallback: (pieTouchResponse) {
                    setState(() {
                      final desiredTouch =
                          pieTouchResponse.touchInput is! PointerExitEvent &&
                              pieTouchResponse.touchInput is! PointerUpEvent;
                      if (desiredTouch &&
                          pieTouchResponse.touchedSection != null) {
                        touchedIndex = pieTouchResponse
                            .touchedSection!.touchedSectionIndex;
                      } else {
                        touchedIndex = -1;
                      }
                    });
                  }),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  sectionsSpace: 01,
                  centerSpaceRadius: 20,
                  sections: showingSections(i: 1),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        touchedIndex = 0;
                      });
                    },
                    onTap: () {},
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(04.0),
                          child: Icon(
                            Ionicons.square,
                            color: Colors.blue,
                          ),
                        ),
                        Container(
                          child: Text('Monday'),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        touchedIndex = 1;
                      });
                    },
                    onTap: () {},
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(04.0),
                          child: Icon(
                            Ionicons.square,
                            color: Colors.red,
                          ),
                        ),
                        Container(
                          child: Text('Tuesday'),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        touchedIndex = 2;
                      });
                    },
                    onTap: () {},
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(04.0),
                          child: Icon(
                            Ionicons.square,
                            color: Colors.indigo,
                          ),
                        ),
                        Container(
                          child: Text('Wednesday'),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        touchedIndex = 3;
                      });
                    },
                    onTap: () {},
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(04.0),
                          child: Icon(
                            Ionicons.square,
                            color: Colors.blueGrey,
                          ),
                        ),
                        Container(
                          child: Text('Thursday'),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        touchedIndex = 4;
                      });
                    },
                    onTap: () {},
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(04.0),
                          child: Icon(
                            Ionicons.square,
                            color: Colors.brown,
                          ),
                        ),
                        Container(
                          child: Text('Friday'),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        touchedIndex = 5;
                      });
                    },
                    onTap: () {},
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(04.0),
                          child: Icon(
                            Ionicons.square,
                            color: Colors.orange,
                          ),
                        ),
                        Container(
                          child: Text('Saturday'),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        touchedIndex = 6;
                      });
                    },
                    onTap: () {},
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(04.0),
                          child: Icon(
                            Ionicons.square,
                            color: Colors.purple,
                          ),
                        ),
                        Container(
                          child: Text('Sunday'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections({required int i}) {
    var currentWidth = MediaQuery.of(context).size.width;
    var extraScreenGrid = currentWidth > 1536;
    var largeScreenGrid = currentWidth > 1366;
    var smallScreenGrid = currentWidth > 1201;
    var extraSmallScreenGrid = currentWidth > 1025;
    var tabScreenGrid = currentWidth > 769;
    var mobileScreenGrid = currentWidth > 481;

    return List.generate(7, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched
          ? extraScreenGrid
              ? 145.0
              : largeScreenGrid
                  ? 120.0
                  : smallScreenGrid
                      ? 200.0
                      : extraSmallScreenGrid
                          ? 165.0
                          : tabScreenGrid
                              ? 175.0
                              : mobileScreenGrid
                                  ? 95.0
                                  : 85.0
          : extraScreenGrid
              ? 140.0
              : largeScreenGrid
                  ? 115.0
                  : smallScreenGrid
                      ? 195.0
                      : extraSmallScreenGrid
                          ? 160.0
                          : tabScreenGrid
                              ? 170.0
                              : mobileScreenGrid
                                  ? 90.0
                                  : 80.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Colors.blue,
            value: 40,
            title: '40%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: Colors.red,
            value: 30,
            title: '30%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: Colors.indigo,
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 3:
          return PieChartSectionData(
            color: Colors.blueGrey,
            value: 19,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 4:
          return PieChartSectionData(
            color: Colors.brown,
            value: 05,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 5:
          return PieChartSectionData(
            color: Colors.orange,
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 6:
          return PieChartSectionData(
            color: Colors.purple,
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );

        default:
          throw Error();
      }
    });
  }
}
