import 'package:easy_developer/util/toast_utils.dart';
import 'package:easy_developer/widgets/SimpleDoubleColumn.dart';
import 'package:flutter/material.dart';

class LifeListPage extends StatefulWidget {
  @override
  _LifeListPageState createState() => _LifeListPageState();
}

class _LifeListPageState extends State<LifeListPage> {
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
                      "生活",
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
            textFirst: "翻译",
            textSecond: "表情制作",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "付费音乐下载🎵",
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
            textFirst: "领取红包",
            textSecond: "以图搜图",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "汇率转换",
            textSecond: "物流查询",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "尺子",
            textSecond: "噪音测量",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "指南针",
            textSecond: "网速测试",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "WIFI 密码查看",
            textSecond: "新华字典",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "归属地查询",
            textSecond: "敬请期待",
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
