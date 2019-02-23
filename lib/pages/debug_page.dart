import 'package:swiss_knife/util/toast_utils.dart';
import 'package:swiss_knife/widgets/simple_double_column.dart';
import 'package:swiss_knife/widgets/utility_title_view.dart';
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
      child: ListView(
        padding: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
        children: <Widget>[
          UtilityTitleView(
            leading: Icons.android,
            title: "应用相关",
            margin: EdgeInsets.only(bottom: 15),
          ),
          Text('一款功能恐怖且兼具颜值的应用管理应用。'),

          /// TODO: TagCloud, 标签云自定义控件, Adapter
          SimpleDoubleColumn(
            margin: EdgeInsets.only(top: 12),
            textFirst: "开源项目",
            textSecond: "Activity 历史",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            textFirst: "Manifest 查看",
            textSecond: "应用信息",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            textFirst: "Apk 提取",
            textSecond: "So 提取",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            textFirst: "反编译",
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
            leading: Icons.developer_board,
            title: "调试相关",
            margin: EdgeInsets.only(bottom: 15),
          ),
          Text('一款支持拼接影视剧台词且体验优秀的图片拼接工具。'),
          SimpleDoubleColumn(
            margin: EdgeInsets.only(top: 12),
            textFirst: "布局边界",
            textSecond: "过度绘制",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            textFirst: "GPU 渲染图",
            textSecond: "布局更新",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            textFirst: "运行中服务",
            textSecond: "USB 调试",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            textFirst: "强制 GPU 渲染",
            textSecond: "GPU 视图更新",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            textFirst: "开发者选项",
            textSecond: "语言设置",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            textFirst: "系统设置",
            textSecond: "指针位置",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            textFirst: "严格模式",
            textSecond: "不保留应用",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            textFirst: "不锁定屏幕",
            textSecond: "系统界面调节",
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
            leading: Icons.info,
            title: "设备信息",
            margin: EdgeInsets.only(bottom: 15),
          ),
          Text('一款功能恐怖且兼具颜值的应用管理应用。'),

          /// TODO: TagCloud, 标签云自定义控件, Adapter
          SimpleDoubleColumn(
            margin: EdgeInsets.only(top: 12),
            textFirst: "本机 ID",
            textSecond: "系统",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            textFirst: "硬件",
            textSecond: "屏幕",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            textFirst: "网络相关",
            textSecond: "虚拟机",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            textFirst: "CPU",
            textSecond: "本机应用",
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
            leading: Icons.add_circle_outline,
            title: "其他内容",
            margin: EdgeInsets.only(bottom: 15),
          ),
          Text('一款功能恐怖且兼具颜值的应用管理应用。'),

          /// TODO: TagCloud, 标签云自定义控件, Adapter
          SimpleDoubleColumn(
            margin: EdgeInsets.only(top: 12),
            textFirst: "专业版",
            textSecond: "天天领红包",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            textFirst: "阿里云优惠+",
            textSecond: "腾讯云优惠+",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            textFirst: "WANGYONGF",
            textSecond: "Android 内推",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            textFirst: "标准尺寸",
            textSecond: "更多功能",
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
