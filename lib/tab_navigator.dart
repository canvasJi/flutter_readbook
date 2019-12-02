import 'package:flutter/material.dart';
import 'package:flutter_readbook/ContentPager.dart';

/**
 * 底部导航栏
 */
class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => new _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  final _defaultColor = Colors.grey;
  final _actionColor = Colors.blue;
  int _defaultIndex = 0;

  @override
  Widget build(BuildContext context) {
    //脚手架
    return Scaffold(
      body: new Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xffedeef0),
                Color(0xffe6e7e9),
              ], begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ), child: ContentPager(
        valueChanged: (int index) {
          setState(() {
            _defaultIndex=index;
          });
        },
      ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _defaultIndex,
        items: [
          _bottonItem("本周", Icons.folder, 0),
          _bottonItem("分享", Icons.explore, 1),
          _bottonItem("免费", Icons.donut_small, 2),
          _bottonItem("长安", Icons.person, 3),
        ],
        onTap: (index) {
          setState(() {
            _defaultIndex = index;
          });
        },
      ),
    );
  }

  /**
   * 封装底部Tab
   */
  _bottonItem(String title, IconData icon, int index) {
    return BottomNavigationBarItem(
        icon: Icon(icon, color: _defaultColor),
        activeIcon: Icon(icon, color: _actionColor),
        title: Text(title, style: TextStyle(
            color: _defaultIndex != index ? _defaultColor : _actionColor),
        ));
  }
}
