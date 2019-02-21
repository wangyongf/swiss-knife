import 'package:easy_developer/common/routes_name.dart';
import 'package:easy_developer/pages/about_page.dart';
import 'package:easy_developer/pages/emoji_customization_page.dart';
import 'package:easy_developer/pages/emoji_list_page.dart';
import 'package:easy_developer/pages/feedback_page.dart';
import 'package:easy_developer/pages/geek_list_page.dart';
import 'package:easy_developer/pages/home_page.dart';
import 'package:easy_developer/pages/life_list_page.dart';
import 'package:easy_developer/pages/settings_page.dart';
import 'package:easy_developer/pages/tools_list_page.dart';
import 'package:easy_developer/pages/translate_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Easy Developer',
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
        Routes.SK_LIFE_LIST_PAGE: (BuildContext context) => LifeListPage(),
      },
    );
  }
}
