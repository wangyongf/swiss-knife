import 'package:flutter/material.dart';

/// 我的 Tab
class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('我的'),
      ),
    );
  }
}
