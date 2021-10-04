// import 'package:feather_icons/feather_icons.dart';
import 'package:ant_icons/ant_icons.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:fleva_icons/fleva_icons.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class SideNavBar extends StatelessWidget {
  const SideNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var extraScreenGrid = currentWidth > 1536;
    var largeScreenGrid = currentWidth > 1366;
    var smallScreenGrid = currentWidth > 1201;
    var extraSmallScreenGrid = currentWidth > 1025;
    var tabScreenGrid = currentWidth > 769;
    var mobileScreenGrid = currentWidth > 481;

    return Container(
      width: smallScreenGrid
          ? 300.0
          : extraSmallScreenGrid
              ? 270.0
              : 0.0,
      color: Colors.indigo[600],
      child: ListView(
        children: [
          Container(
            height: 60.0,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15.0, top: 08.0),
            child: Row(
              children: [
                Icon(
                  AntIcons.radar_chart,
                  size: 50.0,
                  color: Colors.white,
                ),
                Container(
                  padding: EdgeInsets.only(left: 05.0, top: 08.0),
                  child: Text(
                    'Workss',
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            color: Colors.black12,
            child: TextButton(
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(0.0),
                ),
                padding: EdgeInsets.all(18.0),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: Icon(
                      AntIcons.dashboard_outline,
                      size: 23.0,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 10.0, top: 02.0, right: 10.0, bottom: 0.0),
                    child: Text(
                      'Dashboard',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: TextButton(
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(0.0),
                ),
                padding: EdgeInsets.all(18.0),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: Icon(
                      Ionicons.cube_outline,
                      size: 23.0,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 10.0, top: 02.0, right: 10.0, bottom: 0.0),
                    child: Text(
                      'Products',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: TextButton(
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(0.0),
                ),
                padding: EdgeInsets.all(18.0),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 16.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: Icon(
                      FeatherIcons.tag,
                      size: 22.0,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 10.0, top: 03.0, right: 10.0, bottom: 0.0),
                    child: Text(
                      'Total Orders',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: TextButton(
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(0.0),
                ),
                padding: EdgeInsets.all(18.0),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: Icon(
                      Ionicons.people_outline,
                      size: 23.0,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 10.0, top: 02.0, right: 10.0, bottom: 0.0),
                    child: Text(
                      'Customers',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: TextButton(
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(0.0),
                ),
                padding: EdgeInsets.all(18.0),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 14.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: Icon(
                      AntIcons.bell_outline,
                      size: 23.0,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 10.0, top: 02.0, right: 10.0, bottom: 0.0),
                    child: Text(
                      'Notifications',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: TextButton(
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(0.0),
                ),
                padding: EdgeInsets.all(18.0),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: Icon(
                      Ionicons.mail_outline,
                      size: 22.0,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 10.0, top: 03.5, right: 10.0, bottom: 0.0),
                    child: Text(
                      'Messages',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: TextButton(
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(0.0),
                ),
                padding: EdgeInsets.all(18.0),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: Icon(
                      AntIcons.message_outline,
                      size: 23.0,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 10.0, top: 02.5, right: 10.0, bottom: 0.0),
                    child: Text(
                      'Chats',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: TextButton(
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(0.0),
                ),
                padding: EdgeInsets.all(18.0),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: Icon(
                      AntIcons.dollar,
                      size: 23.0,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 10.0, top: 01.0, right: 10.0, bottom: 0.0),
                    child: Text(
                      'Sales',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: TextButton(
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(0.0),
                ),
                padding: EdgeInsets.all(18.0),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: Icon(
                      AntIcons.bar_chart,
                      size: 23.0,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 10.0, top: 02.0, right: 10.0, bottom: 0.0),
                    child: Text(
                      'Analytics',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: TextButton(
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(0.0),
                ),
                padding: EdgeInsets.all(18.0),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: Icon(
                      AntIcons.info_circle_outline,
                      size: 23.0,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 10.0, top: 01.0, right: 10.0, bottom: 0.0),
                    child: Text(
                      'About',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: TextButton(
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(0.0),
                ),
                padding: EdgeInsets.all(18.0),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: Icon(
                      AntIcons.question_circle_outline,
                      size: 23.0,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 10.0, top: 0.5, right: 10.0, bottom: 0.0),
                    child: Text(
                      'Support',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: TextButton(
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(0.0),
                ),
                padding: EdgeInsets.all(18.0),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: Icon(
                      AntIcons.book_outline,
                      size: 23.0,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 10.0, top: 01.0, right: 10.0, bottom: 0.0),
                    child: Text(
                      'Privacy and Policy',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: TextButton(
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(0.0),
                ),
                padding: EdgeInsets.all(18.0),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: Icon(
                      AntIcons.logout_outline,
                      size: 23.0,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 10.0, top: 0.0, right: 10.0, bottom: 0.0),
                    child: Text(
                      'Logout',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
