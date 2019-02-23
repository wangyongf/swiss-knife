import 'package:swiss_knife/util/toast_utils.dart';
import 'package:flutter/material.dart';

class TranslatePage extends StatefulWidget {
  @override
  _TranslatePageState createState() => _TranslatePageState();
}

class _TranslatePageState extends State<TranslatePage> {
  var _bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: _buildBody(context),
    );
  }

  Container _buildBody(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 18, right: 18, top: 8),
      child: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child: RaisedButton(
                      onPressed: () {
                        ToastUtils.showToast(context, "功能开发中，敬请期待~");
                      },
                      child: Text("智能检测"))),

              /// TODO: 竖分割线？
              VerticalDivider(
                width: 25,
                color: Colors.black54,
              ),
              Expanded(
                  child: RaisedButton(
                      onPressed: () {
                        ToastUtils.showToast(context, "功能开发中，敬请期待~");
                      },
                      child: Text("英语"))),
            ],
          ),
          _buildContent(),
          OutlineButton.icon(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              onPressed: () {
                ToastUtils.showToast(context, "功能开发中，敬请期待~");
              },
              icon: Icon(Icons.directions_transit),
              label: Text("翻译一下")),
          Container(
            margin: EdgeInsets.only(top: 16),
            color: Colors.black12.withOpacity(0.1),
            height: 160,
            alignment: Alignment.bottomRight,
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    ToastUtils.showToast(context, "功能开发中，敬请期待~");
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Icon(Icons.settings_voice),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    ToastUtils.showToast(context, "功能开发中，敬请期待~");
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(Icons.content_copy),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    ToastUtils.showToast(context, "功能开发中，敬请期待~");
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(Icons.star),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back)),
      title: Text('翻译'),
      actions: <Widget>[
        GestureDetector(
          onTap: () {
            ToastUtils.showToast(context, "功能开发中，敬请期待~");
          },
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(Icons.star),
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
    );
  }

  Widget _buildContent() {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      color: Colors.white,
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: TextField(
        controller: _bodyController,
        keyboardType: TextInputType.multiline,
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(10),
            hintText: '请输入文字..',
            hintStyle: TextStyle(fontSize: 14, color: Colors.grey)),
        autofocus: true,
        maxLines: 6,
      ),
    );
  }
}
