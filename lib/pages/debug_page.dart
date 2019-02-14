import 'package:flutter/material.dart';

/// 调试 Tab
class DebugPage extends StatefulWidget {
  @override
  _DebugPageState createState() => _DebugPageState();
}

class _DebugPageState extends State<DebugPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('调试'),
      ),
    );
  }
}
