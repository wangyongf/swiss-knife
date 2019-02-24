import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swiss_knife/util/toast_utils.dart';
import 'package:swiss_knife/utility/device/my_device_info.dart';
import 'package:swiss_knife/widgets/simple_double_column.dart';

class AllToolsPage extends StatefulWidget {
  @override
  _AllToolsPageState createState() => _AllToolsPageState();
}

class _AllToolsPageState extends State<AllToolsPage> {
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
                    background: Image.asset(
                      "assets/images/white_snake_1.jpeg",
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
        padding: EdgeInsets.only(top: 10, bottom: 20),
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
            textSecond: "领取红包",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "以图搜图",
            textSecond: "汇率转换",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "物流查询",
            textSecond: "尺子",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "噪音测量",
            textSecond: "指南针",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "网速测试",
            textSecond: "WIFI 密码查看",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "新华字典",
            textSecond: "归属地查询",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "二维码工具",
            textSecond: "氢壁纸",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "原生氢壁纸",
            textSecond: "图片压缩",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "短链生成与还原",
            textSecond: "取色器",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "隐藏图",
            textSecond: "文字转图",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "图片文字化",
            textSecond: "图片转文本编码",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "图片拼接",
            textSecond: "GIF 合成分解",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "带壳截图",
            textSecond: "视频提取音频",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "图片转链接",
            textSecond: "云音乐广告禁用",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "云音乐启动图替换",
            textSecond: "BiliBili 封面获取",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "QQ 强制会话",
            textSecond: "磁力搜索",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "随机数生成",
            textSecond: "获取当前壁纸",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "应用管理",
            textSecond: "DPI 修改",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "电量伪装",
            textSecond: "系统动画速度调节",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "大文件清理",
            textSecond: "空文件清理",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "空文件夹清理",
            textSecond: "安装包清理",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "运行内存清理",
            textSecond: "电量校准",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "修改设备名称",
            textSecond: "直链提取",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "摩斯电码",
            textSecond: "进制转换",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "高级重启",
            textSecond: "Base64 编码转换",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "RC4 加解密",
            textSecond: "MD5 编码",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "网页源码获取",
            textSecond: "全球 IP 查询",
            tapFirst: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
          SimpleDoubleColumn(
            padding: EdgeInsets.only(left: 12, right: 12),
            textFirst: "设备详细信息",
            textSecond: "敬请期待",
            tapFirst: _showDeviceInfo,
            tapSecond: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
          ),
        ],
      ),
    );
  }

  /// 显示设备信息
  _showDeviceInfo() async {
    AndroidDeviceInfo deviceInfo = await MyDeviceInfo.getAndroidDeviceInfo();
    showDialog(
        context: context,
        child: AlertDialog(
          contentPadding: EdgeInsets.all(10),
          title: Text("设备信息"),
          content: ListView(
            children: <Widget>[
              ListTile(
                leading: Text("brand: ${deviceInfo.brand}"),
              ),
              ListTile(
                leading: Text("model: ${deviceInfo.model}"),
              ),
              ListTile(
                leading: Text("board: ${deviceInfo.board}"),
              ),
              ListTile(
                leading: Text("product: ${deviceInfo.product}"),
              ),
              ListTile(
                leading: Text("androidId: ${deviceInfo.androidId}"),
              ),
              ListTile(
                leading: Text("fingerprint: ${deviceInfo.fingerprint}"),
              ),
              ListTile(
                leading: Text("manufacturer: ${deviceInfo.manufacturer}"),
              ),
              ListTile(
                leading: Text("tags: ${deviceInfo.tags}"),
              ),
              ListTile(
                leading: Text(
                    "emulator: ${deviceInfo.isPhysicalDevice ? "no" : "yes"}"),
              ),
              ListTile(
                leading: Text("baseOS: ${deviceInfo.version.baseOS}"),
              ),
              ListTile(
                leading: Text("API level: ${deviceInfo.version.sdkInt}"),
              ),
              ListTile(
                leading: Text("开发代号: ${deviceInfo.version.codename}"),
              ),
              ListTile(
                leading: Text("type: ${deviceInfo.type}"),
              ),
            ],
          ),
          actions: <Widget>[
            RaisedButton(
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: "TODO"));
                  ToastUtils.showToast(context, "复制成功");
                  Navigator.of(context).pop();
                },
                child: Text(
                  "复制所有",
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ));
  }
}
