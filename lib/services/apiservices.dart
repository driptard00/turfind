import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiServices{
  static Future<http.Response?> getUser(String id, String url) async{
    String fullURL = "$url$id";
    try {
      var response = await http.get(Uri.parse(fullURL));
      return response;
    } catch (e) {
      print(e);
      return null;
    }
  }
}