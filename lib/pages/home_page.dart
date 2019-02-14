import 'package:easy_developer/pages/debug_page.dart';
import 'package:easy_developer/pages/index_page.dart';
import 'package:easy_developer/pages/mine_page.dart';
import 'package:easy_developer/pages/more_page.dart';
import 'package:easy_developer/widgets/navigation_icon_view.dart';
import 'package:flutter/material.dart';

/// 应用入口页面（包含三大 Tab）
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int _currentIndex = 0; // 当前界面的索引值
  List<NavigationIconView> _navigationViews; // 底部图标按钮区域
  List<StatefulWidget> _pageList; // 用来存放图标对应的页面（参考 Fragment）

  void _rebuild() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    // 初始化导航图标
    _navigationViews = <NavigationIconView>[
      NavigationIconView(
          icon: Icon(Icons.assessment), title: Text('首页'), vsync: this),
      NavigationIconView(
          icon: Icon(Icons.access_alarm), title: Text('调试'), vsync: this),
      NavigationIconView(
          icon: Icon(Icons.more), title: Text('更多'), vsync: this),
      NavigationIconView(
          icon: Icon(Icons.perm_identity), title: Text('我的'), vsync: this)
    ];

    // 给每个按钮区域加上监听
//    for (NavigationIconView view in _navigationViews) {
//      view.controller.addListener(_rebuild);
//    }

    // 初始化各个页面
    _pageList = <StatefulWidget>[
      IndexPage(),
      DebugPage(),
      MorePage(),
      MinePage(),
    ];
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    // 声明定义一个底部导航的工具栏
    final BottomNavigationBar bottomNavigationBar = BottomNavigationBar(
      items: _navigationViews
          .map((NavigationIconView iconView) => iconView.item)
          .toList(),
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          // 点击之后，需要触发的逻辑事件
          _navigationViews[_currentIndex].controller.reverse();
          _currentIndex = index;
          _navigationViews[_currentIndex].controller.forward();
        });
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(child: _pageList[_currentIndex]),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
