import 'package:ant_icons/ant_icons.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/sidenavbar.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _popupMenu() {
      return PopupMenuButton<int>(
        padding: EdgeInsets.all(0.0),
        itemBuilder: (context) => [
          PopupMenuItem(
            value: 1,
            child: Container(
              width: 130,
              height: 50.0,
              child: Row(
                children: [
                  Icon(
                    AntIcons.shop_outline,
                    color: Colors.black,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 05.0, top: 0.5),
                    child: Text("My Store"),
                  ),
                ],
              ),
            ),
          ),
          PopupMenuItem(
            value: 2,
            child: Container(
              width: 130,
              height: 50.0,
              child: Row(
                children: [
                  Icon(
                    AntIcons.wallet_outline,
                    color: Colors.black,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 05.0, top: 0.0),
                    child: Text("Wallet"),
                  ),
                ],
              ),
            ),
          ),
          PopupMenuItem(
            value: 3,
            child: Container(
              width: 130,
              height: 50.0,
              child: Row(
                children: [
                  Icon(
                    AntIcons.share_alt,
                    color: Colors.black,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 05.0, top: 0.0),
                    child: Text("Share"),
                  ),
                ],
              ),
            ),
          ),
          PopupMenuItem(
            value: 4,
            child: Container(
              width: 130,
              height: 50.0,
              child: Row(
                children: [
                  Icon(
                    AntIcons.logout_outline,
                    color: Colors.black,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 05.0, top: 0.0),
                    child: Text("Logout"),
                  ),
                ],
              ),
            ),
          ),
        ],
        child: Padding(
          padding: EdgeInsets.only(top: 03.0),
          child: Icon(
            Icons.more_vert_outlined,
            color: Colors.black,
            size: 29.0,
          ),
        ),
      );
    }

    var currentWidth = MediaQuery.of(context).size.width;
    var extraLargeScreenGrid = currentWidth > 1536;
    var largeScreenGrid = currentWidth > 1366;
    var smallScreenGrid = currentWidth > 1201;
    var extraSmallScreenGrid = currentWidth > 1025;
    var tabScreenGrid = currentWidth > 769;

    return Container(
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: extraSmallScreenGrid
                      ? Container()
                      : Container(
                          padding: EdgeInsets.only(right: 20.0),
                          child: InkWell(
                            onTap: () {
                              showMaterialModalBottomSheet(
                                expand: false,
                                enableDrag: false,
                                isDismissible: false,
                                context: context,
                                barrierColor: Colors.transparent,
                                backgroundColor: Colors.transparent,
                                duration: Duration(seconds: 0),
                                builder: (context) => GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop(false);
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 280.0,
                                        child: SideNavBar(),
                                      ),
                                      Expanded(
                                        child: Container(
                                          color: Colors.transparent,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            child: Icon(AntIcons.menu),
                          ),
                        ),
                ),
                tabScreenGrid
                    ? Container(
                        margin: EdgeInsets.only(top: 0.0),
                        height: 40.0,
                        width: largeScreenGrid
                            ? 500.0
                            : smallScreenGrid
                                ? 500.0
                                : 400.0,
                        child: TextField(
                          decoration: InputDecoration(
                              suffixIcon: Padding(
                                padding:
                                    EdgeInsets.only(bottom: 2.0, right: 10.0),
                                child: Icon(
                                  FeatherIcons.search,
                                  color: Colors.blue,
                                  size: 22.0,
                                ),
                              ),
                              filled: true,
                              fillColor: Color(0xFFEEEEEE),
                              contentPadding:
                                  const EdgeInsets.only(left: 25, top: 30.0),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25.0)),
                                borderSide: BorderSide.none,
                              ),
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey,
                                  fontSize: 15.0),
                              hintText: 'Search here...'),
                          textInputAction: TextInputAction.search,
                          onChanged: (String value) {},
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black87,
                            fontWeight: FontWeight.normal,
                            decoration: TextDecoration.none,
                            decorationStyle: TextDecorationStyle.solid,
                            decorationThickness: 0.000000000001,
                          ),
                        ),
                      )
                    : Container(
                        child: Row(
                          children: [
                            Icon(
                              AntIcons.radar_chart,
                              size: 45.0,
                              color: Colors.blue,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 05.0, top: 08.0),
                              child: Text(
                                'Workss',
                                style: TextStyle(
                                    fontSize: 25.0, color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                      ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(right: 10.0),
                child: Tooltip(
                  message: 'Notifications',
                  child: Container(
                    padding: EdgeInsets.all(05.0),
                    child: Stack(
                      children: <Widget>[
                        Icon(
                          AntIcons.bell_outline,
                          size: 28.0,
                          color: Colors.black87,
                        ),
                        Positioned(
                          right: 4.0,
                          top: 3.0,
                          child: Stack(
                            children: <Widget>[
                              Icon(
                                Icons.brightness_1,
                                size: 08.0,
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 15.0),
                child: Tooltip(
                  message: 'Chats',
                  child: Container(
                    padding: EdgeInsets.all(05.0),
                    child: Icon(
                      AntIcons.message_outline,
                      size: 28.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 10.0),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black12,
                      width: 02.0,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(04.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2020/04/25/15/04/girl-5091173_960_720.jpg',
                        fit: BoxFit.cover,
                        height: 32.0,
                        width: 32.0,
                      ),
                    ),
                  ),
                ),
              ),
              _popupMenu(),
            ],
          ),
        ],
      ),
    );
  }
}
