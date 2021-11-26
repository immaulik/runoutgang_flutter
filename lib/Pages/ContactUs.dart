import 'package:flutter/material.dart';
import 'package:runoutgang_flutter/Widgets/DrawerWidget.dart';

class ContactUs extends StatelessWidget {
  static const String routes = '/ContactUs';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Us"),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: DrawerWidget(),
    );
  }
}
