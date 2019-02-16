import 'package:easy_developer/util/toast_utils.dart';
import 'package:easy_developer/widgets/SimpleDoubleColumn.dart';
import 'package:easy_developer/widgets/utility_title_view.dart';
import 'package:flutter/material.dart';

/// 首页 Tab
class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
        children: <Widget>[
          UtilityTitleView(
            leading: Icons.android,
            title: "应用管理",
            margin: EdgeInsets.only(bottom: 15),
          ),
          Text('一款功能恐怖且兼具颜值的应用管理应用。'),

          /// TODO: TagCloud, 标签云自定义控件, Adapter
          SimpleDoubleColumn(
            margin: EdgeInsets.only(top: 12),
            textFirst: "应用管理",
            textSecond: "卸载系统应用",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            textFirst: "提取安装包",
            textSecond: "提取图标",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            textFirst: "应用冻结",
            textSecond: "更多功能",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          Divider(
            height: 25,
          ),
          UtilityTitleView(
            leading: Icons.picture_in_picture_alt,
            title: "图片拼接",
            margin: EdgeInsets.only(bottom: 15),
          ),
          Text('一款支持拼接影视剧台词且体验优秀的图片拼接工具。'),
          SimpleDoubleColumn(
            margin: EdgeInsets.only(top: 12),
            textFirst: "影视台词拼接",
            textSecond: "横竖拼接",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            textFirst: "支持预览、排序",
            textSecond: "更多功能",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          Divider(
            height: 25,
          ),
          UtilityTitleView(
            leading: Icons.picture_in_picture,
            title: "表情制作",
            margin: EdgeInsets.only(bottom: 15),
          ),
          Text('几百张表情包自定义生成，极速分享。'),
          SimpleDoubleColumn(
            margin: EdgeInsets.only(top: 12),
            textFirst: "金馆长",
            textSecond: "金馆长2019",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            textFirst: "金馆长大战金馆长",
            textSecond: "更多功能",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          Divider(
            height: 25,
          ),
          UtilityTitleView(
            leading: Icons.pets,
            title: "二维码制作工具",
            margin: EdgeInsets.only(bottom: 15),
          ),
          Text('一款简易的二维码制作工具。'),
          SimpleDoubleColumn(
            margin: EdgeInsets.only(top: 12),
            textFirst: "二维码自定义生成",
            textSecond: "二维码解析",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          Divider(
            height: 25,
          ),
          UtilityTitleView(
            leading: Icons.pie_chart,
            title: "GIF 合成分解",
            margin: EdgeInsets.only(bottom: 15),
          ),
          Text('一款支持多重自定义且体验优秀的 GIF 工具。'),
          SimpleDoubleColumn(
            margin: EdgeInsets.only(top: 12),
            textFirst: "GIF 合成",
            textSecond: "GIF 分解",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          Divider(
            height: 25,
          ),
          UtilityTitleView(
            leading: Icons.photo_filter,
            title: "取色器",
            margin: EdgeInsets.only(bottom: 15),
          ),
          Text('取色精准，操作精准的图片取色应用。'),
          SimpleDoubleColumn(
            margin: EdgeInsets.only(top: 12),
            textFirst: "图片取色",
            textSecond: "调色",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          Divider(
            height: 25,
          ),
          UtilityTitleView(
            leading: Icons.g_translate,
            title: "小翻译",
            margin: EdgeInsets.only(bottom: 15),
          ),
          Text('精美的交互，支持中、英、日、韩、法、泰、西、俄、葡等 28 种语言互译。'),
          SimpleDoubleColumn(
            margin: EdgeInsets.only(top: 12),
            textFirst: "中英互译",
            textSecond: "中日互译",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            textFirst: "中韩互译",
            textSecond: "更多",
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
