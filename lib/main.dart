import 'package:flutter/material.dart';
import 'package:runoutgang_flutter/Pages/AboutUs.dart';
import 'package:runoutgang_flutter/Pages/ContactUs.dart';
import 'package:runoutgang_flutter/Pages/FantasyTips.dart';
import 'package:runoutgang_flutter/Pages/HomePage.dart';
import 'package:runoutgang_flutter/Pages/PrivacyPolicy.dart';
import 'package:runoutgang_flutter/Pages/WorkWithUs.dart';
import 'package:runoutgang_flutter/Themes/MyTheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        routes: {
          HomePage.routes: (context) => HomePage(),
          FantasyTips.routes: (context) => FantasyTips(),
          AboutUs.routes: (context) => FantasyTips(),
          WorkWithUs.routes: (context) => AboutUs(),
          PrivacyPolicy.routes: (context) => PrivacyPolicy(),
          ContactUs.routes: (context) => ContactUs()
        },
        theme: MyTheme.lighttheme(context));
  }
}
