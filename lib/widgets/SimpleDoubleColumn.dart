import 'package:easy_developer/util/text_utils.dart';
import 'package:flutter/material.dart';

class SimpleDoubleColumn extends StatelessWidget {
  final String textFirst;
  final String textSecond;
  final VoidCallback tapFirst;
  final VoidCallback tapSecond;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;

  const SimpleDoubleColumn(
      {Key key,
      this.tapFirst,
      this.tapSecond,
      this.textFirst,
      this.textSecond,
      this.margin,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
            color: Color(0xFFDCDCDC),
            child: Text(textFirst),
            onPressed: tapFirst,
          )),
          Container(
            width: 10,
          ),
          Expanded(
              child: FlatButton(
            color: TextUtils.isEmpty(textSecond)
                ? Color(0xFFFFFF)
                : Color(0xFFDCDCDC),
            child:
                TextUtils.isEmpty(textSecond) ? Container() : Text(textSecond),
            onPressed: tapSecond,
          ))
        ],
      ),
    );
  }
}
