import 'package:flutter/material.dart';

class NavigationIconView {
  final BottomNavigationBarItem item;
  final AnimationController controller;

  NavigationIconView({Widget icon, Widget title, TickerProvider vsync})
      : item = BottomNavigationBarItem(icon: icon, title: title),
        controller = AnimationController(
            duration: kThemeAnimationDuration, // 设置动画持续的时间
            vsync: vsync // 默认属性和参数
            );
}
