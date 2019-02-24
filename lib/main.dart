import 'package:swiss_knife/common/routes_name.dart';
import 'package:swiss_knife/pages/about_page.dart';
import 'package:swiss_knife/pages/all_tools_page.dart';
import 'package:swiss_knife/pages/app_management_page.dart';
import 'package:swiss_knife/pages/awesome_developer_page.dart';
import 'package:swiss_knife/pages/emoji_customization_page.dart';
import 'package:swiss_knife/pages/emoji_list_page.dart';
import 'package:swiss_knife/pages/feedback_page.dart';
import 'package:swiss_knife/pages/geek_list_page.dart';
import 'package:swiss_knife/pages/home_page.dart';
import 'package:swiss_knife/pages/image_split_page.dart';
import 'package:swiss_knife/pages/language_selector_page.dart';
import 'package:swiss_knife/pages/daily_list_page.dart';
import 'package:swiss_knife/pages/settings_page.dart';
import 'package:swiss_knife/pages/system_list_page.dart';
import 'package:swiss_knife/pages/tools_list_page.dart';
import 'package:swiss_knife/pages/translate_page.dart';
import 'package:flutter/material.dart';
import 'package:swiss_knife/pages/valentine_page.dart';
import 'package:swiss_knife/pages/wangyongf_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swiss Knife',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Swiss Knife'),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        Routes.SETTINGS_PAGE: (BuildContext context) => SettingsPage(),
        Routes.FEEDBACK_PAGE: (BuildContext context) => FeedbackPage(),
        Routes.ABOUT_PAGE: (BuildContext context) => AboutPage(),
        Routes.SK_GEEK_LIST_PAGE: (BuildContext context) => GeekListPage(),
        Routes.SK_TRANSLATE_PAGE: (BuildContext context) => TranslatePage(),
        Routes.SK_EMOJI_LIST_PAGE: (BuildContext context) => EmojiListPage(),
        Routes.SK_EMOJI_CUSTOMIZATION_PAGE: (BuildContext context) =>
            EmojiCustomizationPage(),
        Routes.SK_TOOLS_LIST_PAGE: (BuildContext context) => ToolsListPage(),
        Routes.SK_DAILY_LIST_PAGE: (BuildContext context) => DailyListPage(),
        Routes.SK_APP_MANAGEMENT_PAGE: (BuildContext context) =>
            AppManagementPage(),
        Routes.SK_IMAGE_SPLIT_PAGE: (BuildContext context) => ImageSplitPage(),
        Routes.SK_LANGUAGE_SELECTOR_PAGE: (BuildContext context) =>
            LanguageSelectorPage(),
        Routes.SK_ALL_TOOLS_PAGE: (BuildContext context) => AllToolsPage(),
        Routes.SK_SYSTEM_LIST_PAGE: (BuildContext context) => SystemListPage(),
        Routes.SK_VALENTINE_PAGE: (BuildContext context) => ValentinePage(),
        Routes.SK_WANGYONGF_PAGE: (BuildContext context) => WangYongfPage(),
        Routes.SK_AWESOME_DEVELOPER_PAGE: (BuildContext context) =>
            AwesomeDeveloperPage(),
      },
    );
  }
}
