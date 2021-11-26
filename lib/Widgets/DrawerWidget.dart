import 'package:flutter/material.dart';
import 'package:runoutgang_flutter/Pages/ContactUs.dart';
import 'package:runoutgang_flutter/Pages/FantasyTips.dart';
import 'package:runoutgang_flutter/Pages/HomePage.dart';
import 'package:runoutgang_flutter/Pages/PrivacyPolicy.dart';
import 'package:runoutgang_flutter/Pages/WorkWithUs.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          createDrawerHeader(),
          createDrawerBodyItem(
            icon: Icons.home,
            text: 'Home',
            onTap: () {
              Navigator.pushReplacementNamed(context, HomePage.routes);
            },
          ),
          createDrawerBodyItem(
            icon: Icons.privacy_tip,
            text: 'Fantasy Tips',
            onTap: () {
              Navigator.pushReplacementNamed(context, FantasyTips.routes);
            },
          ),
          Divider(),
          createDrawerBodyItem(
            icon: Icons.contact_support_sharp,
            text: 'Contact us',
            onTap: () {
              Navigator.pushReplacementNamed(context, ContactUs.routes);
            },
          ),
          createDrawerBodyItem(
            icon: Icons.home_work_sharp,
            text: 'Work With Us',
            onTap: () {
              Navigator.pushReplacementNamed(context, WorkWithUs.routes);
            },
          ),
          Divider(),
          createDrawerBodyItem(
            icon: Icons.rate_review,
            text: 'Rate Us',
            onTap: () {
              Navigator.pushReplacementNamed(context, FantasyTips.routes);
            },
          ),
          createDrawerBodyItem(
            icon: Icons.share,
            text: 'Share',
            onTap: () {
              Navigator.pushReplacementNamed(context, FantasyTips.routes);
            },
          ),
          createDrawerBodyItem(
            icon: Icons.policy,
            text: 'Privacy Policy',
            onTap: () {
              Navigator.pushReplacementNamed(context, PrivacyPolicy.routes);
            },
          ),
          ListTile(
            title: Text('App version 1.0.0'),
          ),
        ],
      ),
    );
  }

  Widget createDrawerHeader() {
    return DrawerHeader(
      padding: EdgeInsets.fromLTRB(10, 50, 0, 5),
      child: Row(
        children: [
          Container(
            height: 80,
            width: 80,
            child: CircleAvatar(child: Image.asset('assets/logo.png')),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'By NacXo',
            style: TextStyle(
                fontSize: 20,
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget createDrawerBodyItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
