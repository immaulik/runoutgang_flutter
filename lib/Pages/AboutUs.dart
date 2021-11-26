import 'package:flutter/material.dart';
import 'package:runoutgang_flutter/Widgets/DrawerWidget.dart';

class AboutUs extends StatelessWidget {
  static const String routes = '/AboutUs';
  @override
  Widget build(BuildContext context) {
    String API = 'http://nacxo.com/Blog/aboutUs.html';
    return Scaffold(
      appBar: AppBar(
          title: Text("About Us"),
          iconTheme: IconThemeData(color: Colors.white)),
      drawer: DrawerWidget(),
    );
  }
}
