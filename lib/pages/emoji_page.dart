import 'package:easy_developer/util/toast_utils.dart';
import 'package:easy_developer/widgets/SimpleDoubleColumn.dart';
import 'package:flutter/material.dart';

class EmojiPage extends StatefulWidget {
  @override
  _EmojiPageState createState() => _EmojiPageState();
}

class _EmojiPageState extends State<EmojiPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Scaffold(
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  expandedHeight: 150,
                  floating: false,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: false,
                    title: Text(
                      "全部",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    background: Image.network(
                      "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tynysrgb&h=350",
                      fit: BoxFit.cover,
                    ),
                  ),
                  actions: <Widget>[
                    GestureDetector(
                      onTap: () {
                        ToastUtils.showToast(context, "功能开发中，敬请期待~");
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Icon(Icons.collections_bookmark),
                      ),
                    ),
                  ],
                )
              ];
            },
            body: _buildBody(context)),
      ),
    );
  }

  Container _buildBody(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "直链提取",
            textSecond: "摩斯电码",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "进制转换",
            textSecond: "高级重启",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "Base64 编码转换",
            textSecond: "RC4 加解密",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "MD5 编码",
            textSecond: "网页源码获取",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "全球 IP 查询",
            textSecond: "查看设备详细信息",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
        ],
      ),
    );
  }
}
