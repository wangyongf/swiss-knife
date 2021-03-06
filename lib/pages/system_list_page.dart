import 'package:flutter/material.dart';
import 'package:swiss_knife/util/toast_utils.dart';

class SystemListPage extends StatefulWidget {
  @override
  _SystemListPageState createState() => _SystemListPageState();
}

class _SystemListPageState extends State<SystemListPage> {
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
                      "系统",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    background: Image.asset(
                      "assets/images/white_snake_4.jpeg",
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

  _buildBody(BuildContext context) {
    return Container(
      child: Center(
        child: Text("System"),
      ),
    );
  }
}
