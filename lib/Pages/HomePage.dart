// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:runoutgang_flutter/Pages/MatchDetails.dart';
import 'package:runoutgang_flutter/Widgets/DrawerWidget.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  static const String routes = '/Home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<AllPost>> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Home"), iconTheme: IconThemeData(color: Colors.white)),
      drawer: DrawerWidget(),
      body: Center(
        child: FutureBuilder<List<AllPost>>(
          future: futureAlbum,
          builder: (context, snapshot) {
            List<AllPost>? _allpost = snapshot.data;
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: _allpost!.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MatchDetails(
                                postId: _allpost[index].postID,
                                postTitle: _allpost[index].postTitle),
                          ));
                    },
                    child: Card(
                      margin: EdgeInsets.all(20),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Expanded(
                          child: Column(
                            children: [
                              Text(
                                _allpost[index].series +
                                    " | " +
                                    _allpost[index].contentUpdate,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w300),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ListTile(
                                  leading: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    child: Image.network(
                                        'http://nacxo.com/Blog/admin/uploaded/' +
                                            _allpost[index].icon1),
                                  ),
                                  title: Center(
                                      child: Text(_allpost[index].postTitle,
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w100))),
                                  trailing: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    child: Image.network(
                                        'http://nacxo.com/Blog/admin/uploaded/' +
                                            _allpost[index].icon2),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            } else {
              print(snapshot.error);
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }

  Future<List<AllPost>> fetchAlbum() async {
    final response = await http
        .get(Uri.parse('https://nacxo.com/Blog/android/allPosts.php'));

    if (response.statusCode == 200) {
      List<dynamic> allPost = jsonDecode(response.body);
      return allPost.map((e) => AllPost.fromJson(e)).toList();
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}

class AllPost {
  final String postID;
  final String postTitle;
  final String series;
  final String contentUpdate;
  final String icon1;
  final String icon2;
  AllPost({
    required this.postID,
    required this.postTitle,
    required this.series,
    required this.contentUpdate,
    required this.icon1,
    required this.icon2,
  });

  factory AllPost.fromJson(Map<String, dynamic> json) {
    return AllPost(
      postID: json['postID'],
      postTitle: json['postTitle'],
      series: json['series'],
      contentUpdate: json['contentUpdate'],
      icon1: json['icon1'],
      icon2: json['icon2'],
    );
  }
}
