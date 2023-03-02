import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:lanceapi/model/user_list/user_list_model.dart';

class UserListApi {
  Future<List<UserListModel>?> getApi() async {
    var client = http.Client();
    var uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");

    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;

      return userListModelFromJson(json);
    }
  }

  Future<List<UserListModel>?> deleteApi(int id) async {
    var client = http.Client();
    var uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");

    var response = await client.delete(uri);
    if (response.statusCode == 200) {
      var json = response.body;

      return userListModelFromJson(json);
    }
  }
}
