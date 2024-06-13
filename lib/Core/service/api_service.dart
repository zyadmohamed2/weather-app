import 'dart:developer';

import 'package:http/http.dart' as http;
class ApiService {
  Future<http.Response> post(
      {required String url,
      Object? data}) async {
    try {
      var response = await http.post(
          Uri.parse(url),
          body: data,

        );
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<http.Response> get(
      {required String url}) async {
    try {
      var response = await http.get(
        Uri.parse(url),
      );
      return response;
    } catch (e) {
      throw e;
    }
  }
}
