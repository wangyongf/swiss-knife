import 'package:easy_developer/common/routes_name.dart';
import 'package:easy_developer/pages/about_page.dart';
import 'package:easy_developer/pages/feedback_page.dart';
import 'package:easy_developer/pages/home_page.dart';
import 'package:easy_developer/pages/settings_page.dart';
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
      },
    );
  }
}
