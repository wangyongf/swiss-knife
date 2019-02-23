import 'package:swiss_knife/common/routes_name.dart';
import 'package:swiss_knife/pages/about_page.dart';
import 'package:swiss_knife/pages/app_management_page.dart';
import 'package:swiss_knife/pages/emoji_customization_page.dart';
import 'package:swiss_knife/pages/emoji_list_page.dart';
import 'package:swiss_knife/pages/feedback_page.dart';
import 'package:swiss_knife/pages/geek_list_page.dart';
import 'package:swiss_knife/pages/home_page.dart';
import 'package:swiss_knife/pages/image_split_page.dart';
import 'package:swiss_knife/pages/language_selector_page.dart';
import 'package:swiss_knife/pages/life_list_page.dart';
import 'package:swiss_knife/pages/settings_page.dart';
import 'package:swiss_knife/pages/tools_list_page.dart';
import 'package:swiss_knife/pages/translate_page.dart';
import 'package:flutter/material.dart';

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
        Routes.SK_LIFE_LIST_PAGE: (BuildContext context) => LifeListPage(),
        Routes.SK_APP_MANAGEMENT_PAGE: (BuildContext context) => AppManagementPage(),
        Routes.SK_IMAGE_SPLIT_PAGE: (BuildContext context) => ImageSplitPage(),
        Routes.SK_LANGUAGE_SELECTOR_PAGE: (BuildContext context) => LanguageSelectorPage(),
      },
    );
  }
}
