//操作系統的核心，把動態資料物件化，方便管理
import 'dart:convert';

//import 'package:http/http.dart';

//建立一個類別post，將外部資料格式化(保有的欄位不動)
class Post {
  int userId;
  int id;
  String title;
  String body;

  //建構子
  Post(this.userId, this.id, this.title, this.body);
  //建立一個函數叫做toJsonObjectString，可將物件轉換成json格式的string
  //後續傳數據給外部系統時，透過此函數可直接轉換成外部資料需要的json格式
  String toJsonObjectString() {
    return jsonEncode({
      'userId': this.userId,
      'id': this.id,
      'title': this.title,
      'body': this.body
    });
  }

  //建構子的一種
  //將符合json格式的dynamic(dynamic是未確定格式的大家族)建置成post物件
  factory Post.fromJson(dynamic jsonObject) {
    //因應未來跟外部系統取得數據後，將數據轉換成post物件
    return Post(jsonObject['userId'], jsonObject['id'], jsonObject['title'],
        jsonObject['body']);
  }
}
