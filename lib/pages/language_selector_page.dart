import 'package:flutter/material.dart';
import 'package:swiss_knife/util/toast_utils.dart';

class LanguageSelectorPage extends StatefulWidget {
  @override
  _LanguageSelectorPageState createState() => _LanguageSelectorPageState();
}

class _LanguageSelectorPageState extends State<LanguageSelectorPage> {
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
        title: Text("选择语言"),
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
        ],
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Container(
      margin: EdgeInsets.only(top: 3),
      child: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int position) {
            return _buildItem(position);
          }),
    );
  }

  _buildItem(int position) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "智能检测",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ],
        ),
        Divider(),
      ],
    );
  }
}
