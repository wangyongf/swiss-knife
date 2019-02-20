import 'package:easy_developer/util/toast_utils.dart';
import 'package:flutter/material.dart';

class AppManagementPage extends StatefulWidget {
  @override
  _AppManagementPageState createState() => _AppManagementPageState();
}

class _AppManagementPageState extends State<AppManagementPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(Icons.arrow_back),
          ),
        ),
        title: Text("应用管理"),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(Icons.search),
            ),
          ),
          GestureDetector(
            onTap: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(Icons.more_vert),
            ),
          ),
        ],
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Container(
      child: ListView(),
    );
  }
}
