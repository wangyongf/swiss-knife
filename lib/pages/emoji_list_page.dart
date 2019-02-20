import 'package:easy_developer/pages/emoji_customization_page.dart';
import 'package:easy_developer/util/toast_utils.dart';
import 'package:flutter/material.dart';

class EmojiListPage extends StatefulWidget {
  @override
  _EmojiListPageState createState() => _EmojiListPageState();
}

class _EmojiListPageState extends State<EmojiListPage> {
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
        title: Text("表情制作"),
        actions: <Widget>[
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
      color: Colors.black26.withOpacity(0.1).withAlpha(10),
      child: GridView.count(
        primary: false,
        crossAxisCount: 3,
        padding: EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: _getImageList(),
      ),
    );
  }

  List<Widget> _getImageList() {
    List<Widget> widgetList = new List();
    for (int i = 0; i < 12; i++) {
      widgetList.add(_getSingleImage(i));
    }
    return widgetList;
  }

  Widget _getSingleImage(int i) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => EmojiCustomizationPage(
                  imageName: "assets/images/emoji/${i + 1}.jpg",
                )));
      },
      child: Image.asset("assets/images/emoji/${i + 1}.jpg"),
    );
  }
}
