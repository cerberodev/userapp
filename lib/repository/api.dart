// ignore_for_file: avoid_dynamic_calls, omit_local_variable_types, prefer_final_locals, non_constant_identifier_names

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:userapp/models/user.dart';

Future<List<User>> getUsers() async {
  var url = Uri.parse('https://api.github.com/users');
  var response = await http.get(url);
  print(response.body);
  List responseJson = jsonDecode(response.body.toString()) as List;
  var userList = createUserList(responseJson);
  return userList;
}

List<User> createUserList(List data) {
  var lists = <User>[];
  for (var i = 0; i < data.length; i++) {
    String? login = data[i]['login'] as String;
    int? id = data[i]['id'] as int;
    String? avatar_url = data[i]['avatar_url'] as String;
    String? html_url = data[i]['html_url'] as String;

    var users = User(
      login: login,
      id: id,
      avatar_url: avatar_url,
      html_url: html_url,
    );
    lists.add(users);
  }
  return lists;
}
