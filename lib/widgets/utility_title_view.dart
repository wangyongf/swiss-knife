import 'package:flutter/material.dart';

/// 图标+标题（文字）
class UtilityTitleView extends StatelessWidget {
  final IconData leading;
  final String title;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;

  const UtilityTitleView(
      {Key key, this.leading, this.title, this.margin, this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      child: Row(
        children: <Widget>[
          Icon(leading),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
