import 'package:flutter/material.dart';
import 'package:runoutgang_flutter/Widgets/DrawerWidget.dart';

class FantasyTips extends StatelessWidget {
  static const String routes = '/FantasyTip';

  @override
  Widget build(BuildContext context) {
    String API = 'http://nacxo.com/Blog/tips.html';
    return Scaffold(
      appBar: AppBar(
          title: Text("Fantasy Tip"),
          iconTheme: IconThemeData(color: Colors.white)),
      drawer: DrawerWidget(),
    );
  }
}
