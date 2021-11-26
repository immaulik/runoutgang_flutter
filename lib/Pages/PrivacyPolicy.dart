import 'package:flutter/material.dart';
import 'package:runoutgang_flutter/Widgets/DrawerWidget.dart';

class PrivacyPolicy extends StatelessWidget {
  static const String routes = '/PrivacyPolicy';

  @override
  Widget build(BuildContext context) {
    String API = 'http://nacxo.com/privacy_policy.html';
    return Scaffold(
      appBar: AppBar(
        title: Text("Privacy Policy"),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: DrawerWidget(),
    );
  }
}
