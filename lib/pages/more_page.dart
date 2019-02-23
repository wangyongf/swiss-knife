import 'package:swiss_knife/common/routes_name.dart';
import 'package:swiss_knife/util/toast_utils.dart';
import 'package:swiss_knife/widgets/category_cover_card.dart';
import 'package:swiss_knife/widgets/vertical_icon_view.dart';
import 'package:flutter/material.dart';

/// 更多 Tab
class MorePage extends StatefulWidget {
  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(Routes.SK_TRANSLATE_PAGE);
                  },
                  child: VerticalIconView(
                    icon: Icons.g_translate,
                    text: "翻译",
                  ),
                ),
              ),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(Routes.SK_EMOJI_LIST_PAGE);
                },
                child: VerticalIconView(
                  icon: Icons.insert_emoticon,
                  text: "表情",
                ),
              )),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(Routes.SK_APP_MANAGEMENT_PAGE);
                },
                child: VerticalIconView(
                  icon: Icons.apps,
                  text: "应用",
                ),
              )),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  ToastUtils.showToast(context, "功能开发中，敬请期待~");
                },
                child: VerticalIconView(
                  icon: Icons.picture_in_picture,
                  text: "拼图",
                ),
              )),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 20),
            child: Divider(),
          ),
          _buildRowOne(),
          _buildRowTwo(),
          _buildRowThree(),
        ],
      ),
    );
  }

  Padding _buildRowThree() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
      child: Row(
        children: <Widget>[
          Expanded(
              child: GestureDetector(
            onTap: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: CategoryCoverCard(
                assetBg: "assets/images/white_snake_7.jpeg",
                title: "Wang",
                subTitle: "yongf",
              ),
            ),
          )),
          Expanded(
              child: GestureDetector(
            onTap: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: CategoryCoverCard(
                assetBg: "assets/images/white_snake_8.jpeg",
                title: "Awesome",
                subTitle: "Developer",
              ),
            ),
          )),
          Expanded(
              child: GestureDetector(
            onTap: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: CategoryCoverCard(
                assetBg: "assets/images/white_snake_9.jpeg",
                title: "敬请期待",
                subTitle: "Coming soon",
              ),
            ),
          )),
        ],
      ),
    );
  }

  Padding _buildRowTwo() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
      child: Row(
        children: <Widget>[
          Expanded(
              child: GestureDetector(
            onTap: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: CategoryCoverCard(
                assetBg: "assets/images/white_snake_4.jpeg",
                title: "系统",
                subTitle: "System",
              ),
            ),
          )),
          Expanded(
              child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routes.SK_GEEK_LIST_PAGE);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: CategoryCoverCard(
                assetBg: "assets/images/white_snake_5.jpeg",
                title: "极客",
                subTitle: "Geek",
              ),
            ),
          )),
          Expanded(
              child: GestureDetector(
            onTap: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: CategoryCoverCard(
                assetBg: "assets/images/white_snake_6.jpeg",
                title: "情侣",
                subTitle: "Valentine",
              ),
            ),
          )),
        ],
      ),
    );
  }

  Padding _buildRowOne() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: <Widget>[
          Expanded(
              child: GestureDetector(
            onTap: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: CategoryCoverCard(
                assetBg: "assets/images/white_snake_1.jpeg",
                title: "全部",
                subTitle: "All",
              ),
            ),
          )),
          Expanded(
              child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(Routes.SK_LIFE_LIST_PAGE);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: CategoryCoverCard(
                assetBg: "assets/images/white_snake_2.jpeg",
                title: "生活",
                subTitle: "Daily",
              ),
            ),
          )),
          Expanded(
              child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(Routes.SK_TOOLS_LIST_PAGE);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: CategoryCoverCard(
                assetBg: "assets/images/white_snake_3.jpeg",
                title: "工具",
                subTitle: "Tools",
              ),
            ),
          )),
        ],
      ),
    );
  }
}
