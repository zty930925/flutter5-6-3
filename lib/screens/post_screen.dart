import 'package:flutter_application_3/components/post_table_with_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/daos/post_dao.dart';
import 'package:flutter_application_3/models/post.dart';

class PostScreen extends StatefulWidget {
  @override
  State createState() {
    return _PostScreen();
  }
}

class _PostScreen extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: PostDao.getPosts(),
        builder:
            (BuildContext context, AsyncSnapshot<List<Post>> asyncSnapshot) {
          return Scaffold(
            body: PostTableWithSearch(asyncSnapshot.requireData),
          );
        });
  }
}
