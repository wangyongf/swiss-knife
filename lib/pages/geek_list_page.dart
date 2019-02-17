import 'package:easy_developer/util/toast_utils.dart';
import 'package:easy_developer/widgets/SimpleDoubleColumn.dart';
import 'package:flutter/material.dart';

class GeekListPage extends StatefulWidget {
  @override
  _GeekListPageState createState() => _GeekListPageState();
}

class _GeekListPageState extends State<GeekListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: GestureDetector(
              child: Icon(
                Icons.arrow_back,
                size: 20,
              ),
              onTap: () => Navigator.of(context).pop(),
            ),
            centerTitle: false,
            actions: <Widget>[
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Icon(Icons.collections_bookmark),
                ),
                onTap: () {
                  ToastUtils.showToast(context, "功能开发中，敬请期待~");
                },
              )
            ],
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "极客",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
              ),
              centerTitle: false,
              collapseMode: CollapseMode.parallax,
            ),
          ),
          _buildGeekList(),
        ],
      ),
    );
  }

  _buildGeekList() {
    return SliverFixedExtentList(
      itemExtent: 55.0,
      delegate: SliverChildBuilderDelegate(
          (context, index) => _buildGeekItem(index),
          childCount: 13),
    );
  }

  _buildGeekItem(int index) {
    if (index >= 5) {
      return Container();
    }
    switch (index) {
      case 0:
        return SimpleDoubleColumn(
          padding: EdgeInsets.only(left: 12, right: 12),
          textFirst: "直链提取",
          textSecond: "摩斯电码",
          tapFirst: () {
            ToastUtils.showToast(context, "功能开发中，敬请期待~");
          },
          tapSecond: () {
            ToastUtils.showToast(context, "功能开发中，敬请期待~");
          },
        );
      case 1:
        return SimpleDoubleColumn(
          padding: EdgeInsets.only(left: 12, right: 12),
          textFirst: "进制转换",
          textSecond: "高级重启",
          tapFirst: () {
            ToastUtils.showToast(context, "功能开发中，敬请期待~");
          },
          tapSecond: () {
            ToastUtils.showToast(context, "功能开发中，敬请期待~");
          },
        );
      case 2:
        return SimpleDoubleColumn(
          padding: EdgeInsets.only(left: 12, right: 12),
          textFirst: "Base64 编码转换",
          textSecond: "RC4 加解密",
          tapFirst: () {
            ToastUtils.showToast(context, "功能开发中，敬请期待~");
          },
          tapSecond: () {
            ToastUtils.showToast(context, "功能开发中，敬请期待~");
          },
        );
      case 3:
        return SimpleDoubleColumn(
          padding: EdgeInsets.only(left: 12, right: 12),
          textFirst: "MD5 编码",
          textSecond: "网页源码获取",
          tapFirst: () {
            ToastUtils.showToast(context, "功能开发中，敬请期待~");
          },
          tapSecond: () {
            ToastUtils.showToast(context, "功能开发中，敬请期待~");
          },
        );
      case 4:
        return SimpleDoubleColumn(
          padding: EdgeInsets.only(left: 12, right: 12),
          textFirst: "全球 IP 查询",
          textSecond: "查看设备详细信息",
          tapFirst: () {
            ToastUtils.showToast(context, "功能开发中，敬请期待~");
          },
          tapSecond: () {
            ToastUtils.showToast(context, "功能开发中，敬请期待~");
          },
        );
    }
  }
}
