import 'package:flutter/material.dart';
import 'package:runoutgang_flutter/Widgets/DrawerWidget.dart';

class WorkWithUs extends StatelessWidget {
  static const String routes = '/WorkWithUs';

  @override
  Widget build(BuildContext context) {
    String API = 'http://nacxo.com/Blog/workForUs.html';
    return Scaffold(
      appBar: AppBar(
        title: Text("Work With Us"),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: DrawerWidget(),
    );
  }
}
