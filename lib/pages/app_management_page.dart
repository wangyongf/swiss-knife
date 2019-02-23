import 'package:flutter/src/scheduler/ticker.dart';
import 'package:swiss_knife/util/toast_utils.dart';
import 'package:flutter/material.dart';

class AppManagementPage extends StatefulWidget {
  @override
  _AppManagementPageState createState() => _AppManagementPageState();
}

class _AppManagementPageState extends State<AppManagementPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 4, vsync: this);
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
        title: Text("应用管理"),
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
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            onSelected: (String value) {
              switch (value) {
                case "statistic":
                  ToastUtils.showToast(context, "功能开发中，敬请期待～");
                  break;
                case "order":
                  ToastUtils.showToast(context, "功能开发中，敬请期待～");
                  break;
                case "multi":
                  ToastUtils.showToast(context, "功能开发中，敬请期待～");
                  break;
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
                  PopupMenuItem(
                    value: "statistic",
                    child: Text("统计"),
                  ),
                  PopupMenuItem(
                    value: "order",
                    child: Text("排序"),
                  ),
                  PopupMenuItem(
                    value: "multi",
                    child: Text("多选"),
                  ),
                ],
          ),
        ],
        bottom: TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.supervised_user_circle),
            ),
            Tab(
              icon: Icon(Icons.settings_system_daydream),
            ),
            Tab(
              icon: Icon(Icons.signal_cellular_no_sim),
            ),
            Tab(
              icon: Icon(Icons.android),
            ),
          ],
          controller: _tabController,
        ),
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Container(
      color: Colors.grey.withAlpha(20),
      child: TabBarView(
        controller: _tabController,
        children: <Widget>[
          _getUserApps(),
          _getSystemApps(),
          _getFreezedApps(),
          _getApks(),
        ],
      ),
    );
  }

  Widget _getUserApps() {
    return GridView.count(
      padding: EdgeInsets.all(8),
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      crossAxisCount: 2,
      childAspectRatio: 1.9,
      children: List.generate(20, (int position) {
        return _buildGridItem(position);
      }),
    );
  }

  Widget _buildGridItem(int position) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 8, left: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("36氪"),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/mountains.jpg"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("17.44MB"),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text("v8.2"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _getSystemApps() {
    return GridView.count(
      padding: EdgeInsets.all(8),
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      crossAxisCount: 2,
      childAspectRatio: 1.9,
      children: List.generate(20, (int position) {
        return _buildGridItem(position);
      }),
    );
  }

  Widget _getFreezedApps() {
    return Center(
      child: Text("还没有冻结任何应用呢。"),
    );
  }

  Widget _getApks() {
    return ListView.builder(
        padding: EdgeInsets.all(0),
        itemCount: 20,
        itemBuilder: (BuildContext context, int position) {
          return _buildApkItem(position);
        });
  }

  Widget _buildApkItem(int position) {
    return Card(
      margin: EdgeInsets.only(top: 5, left: 5, right: 5),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/images/mountains.jpg"),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "豌豆荚",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text(
                      "v6.3.21",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                ],
              ),
              Expanded(child: Container()),
              PopupMenuButton(
                  icon: Icon(Icons.more_vert),
                  onSelected: (String value) {
                    switch (value) {
                      case "delete":
                        ToastUtils.showToast(context, "功能开发中，敬请期待～");
                        break;
                      case "info":
                        _showBottomSheet("豌豆荚");
                        break;
                    }
                  },
                  itemBuilder: (BuildContext context) =>
                      <PopupMenuItem<String>>[
                        PopupMenuItem(
                          child: Text("删除"),
                          value: "delete",
                        ),
                        PopupMenuItem(
                          child: Text("查看信息"),
                          value: "info",
                        ),
                      ])
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8, left: 15, right: 15),
            child: Text(
              "/storage/emulated/0/Quark/Download/X框架仓库102.apk",
              style: TextStyle(color: Colors.grey),
              softWrap: true,
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }

  _showBottomSheet(String appName) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: ListView(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/images/mountains.jpg",
                      height: 20,
                      width: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "应用信息",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(child: Container()),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.close),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("应用名：$appName"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("包名：com.wandoujia.phoenix2"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("启动类：com.pp.assistant.activity.PPMainActivity"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("versionName：6.3.21"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("versionCode：18061"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("安装包目录：/storage/emulated/0/Quark/"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("MD5：6e9489a8990065a9e9"),
              ),
            ],
          ),
        );
      },
    ).then((val) {
      print(val);
    });
  }
}
