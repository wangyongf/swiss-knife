import 'package:easy_developer/util/toast_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_color_picker/flutter_material_color_picker.dart';
import 'package:share/share.dart';

class EmojiCustomizationPage extends StatefulWidget {
  final String imageName;

  const EmojiCustomizationPage({Key key, @required this.imageName})
      : super(key: key);

  @override
  _EmojiCustomizationPageState createState() => _EmojiCustomizationPageState();
}

class _EmojiCustomizationPageState extends State<EmojiCustomizationPage> {
  TextEditingController _textController;
  double _textSize;
  int _currentTextStyle;

  @override
  void initState() {
    super.initState();

    _textSize = 15;
    _currentTextStyle = 0;
  }

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
        title: Text("表情编辑"),
        actions: <Widget>[
          PopupMenuButton(
              onSelected: (String value) {
                switch (value) {
                  case "save":
                    ToastUtils.showToast(context, "保存功能开发中，敬请期待~");
                    break;
                  case "share":
                    Share.share('check out my website https://example.com');
                    break;
                }
              },
              itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
                    PopupMenuItem(
                      value: "save",
                      child: Text("保存"),
                    ),
                    PopupMenuItem(
                      value: "share",
                      child: Text("分享"),
                    ),
                  ]),
        ],
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Container(
      child: ListView(
        padding: EdgeInsets.only(left: 20, right: 20),
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 40, bottom: 40),
            decoration: BoxDecoration(
//              border: Border.all(
//                color: Colors.grey,
//                width: 3.0,
//                style: BorderStyle.solid,
//              ),
                ),
            child: Image.asset(
              widget.imageName,
              height: 180,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Text(
              "文字大小",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Slider(
              value: _textSize,
              activeColor: Colors.blue,
              inactiveColor: Colors.black12,
              label: "value: $_textSize",
              min: 0,
              max: 30,
              divisions: 30,
              onChanged: (value) {
                setState(() {
                  _textSize = value.roundToDouble();
                });
              }),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[Text("$_textSize")],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Icon(
                  Icons.text_format,
                  size: 25,
                ),
              ),
              Expanded(
                child: TextField(
                  controller: _textController,
                  obscureText: false,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "请输入文字...",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Icon(
                  Icons.credit_card,
                  size: 25,
                ),
              ),
              Expanded(
                child: DropdownButton(
                    hint: Text(_getTextStyleHint()),
                    items: <DropdownMenuItem<int>>[
                      DropdownMenuItem(
                        child: Text("正常的字体风格"),
                        value: 0,
                      ),
                      DropdownMenuItem(
                        child: Text("加粗的字体风格"),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text("斜体字体"),
                        value: 2,
                      ),
                      DropdownMenuItem(
                        child: Text("斜体加粗的风格"),
                        value: 3,
                      ),
                      DropdownMenuItem(
                        child: Text("中间有线的"),
                        value: 4,
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        _currentTextStyle = value;
                      });
                    }),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Icon(
                  Icons.palette,
                  size: 25,
                ),
              ),
              Expanded(
                  child: GestureDetector(
                      onTap: () {
                        _showColorPicker(context);
                      },
                      child: Text(
                        "选择文字颜色",
                        style: TextStyle(),
                      ))),
            ],
          ),
        ],
      ),
    );
  }

  _showColorPicker(BuildContext context) {
    showDialog(
        context: context,
        child: AlertDialog(
          contentPadding: EdgeInsets.all(10),
          title: Text("选择文字颜色"),
          content: MaterialColorPicker(
            onColorChange: (Color color) {},
            selectedColor: Colors.blue,
          ),
          actions: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "取消",
                style: TextStyle(color: Colors.white),
              ),
            ),
            RaisedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  "确定",
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ));
  }

  String _getTextStyleHint() {
    switch (_currentTextStyle) {
      case 0:
        return "正常的字体风格";
      case 1:
        return "加粗的字体风格";
      case 2:
        return "斜体字体";
      case 3:
        return "斜体加粗的风格";
      case 4:
        return "中间有线的";
    }
    return "";
  }
}
