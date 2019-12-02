import 'package:flutter/material.dart';


/**
 * 内容Content
 */
class ContentPager extends StatefulWidget {

  final ValueChanged<int> valueChanged;

  const ContentPager({Key key, this.valueChanged}) :
  /* 初始化列表*/
        super(key: key);

  @override
  _State createState() => new _State();
}

class _State extends State<ContentPager> {

  static List<Color> _colorList = [
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.green,
  ];
  PageController _pageController = PageController(
    /* 设置视图比例*/

      viewportFraction: 0.8
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //appBar
        Expanded(child:
        PageView(
          onPageChanged: widget.valueChanged,
          controller: _pageController,
          children: <Widget>[
            _wrapItem(0),
            _wrapItem(1),
            _wrapItem(2),
            _wrapItem(3),
          ],

        ))
      ],
    );
  }

  /**
   * pageView的子元素
   */
  Widget _wrapItem(index) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: new Container(
        decoration: BoxDecoration(color: _colorList[index]),),);
  }
}
