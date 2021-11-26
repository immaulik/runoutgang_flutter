import 'dart:async';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ignore: must_be_immutable
class MatchDetails extends StatefulWidget {
  String postId;
  String postTitle;

  MatchDetails({required this.postId, required this.postTitle});

  @override
  State<MatchDetails> createState() => _MatchDetailsState();
}

class _MatchDetailsState extends State<MatchDetails> {
  Completer<WebViewController> _controller = Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.postTitle),
      ),
      body:
          //  Center(
          //   child: RaisedButton(
          //     child: Text('Press'),
          //     onPressed: () {
          //       final Uri _emailLaunchUri = Uri(
          //           scheme: 'mailto',
          //           path: 'pratik13butani@gmail.com',
          //           queryParameters: {'subject': 'Pratik Butani'});
          //       _makeSocialMediaRequest(_emailLaunchUri.toString());
          //     },
          //   ),
          // )

          WebView(
        initialUrl: 'http://nacxo.com/Blog/viewpost.php?id=' + widget.postId,
        javascriptMode: JavascriptMode.disabled,
        navigationDelegate: (navigation) {
          return _launchInBrowser();
        },
      ),
    );
  }

  _makeSocialMediaRequest(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchInBrowser() async {
    String url = "https://www.facebook.com/";
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }
}
