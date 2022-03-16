import 'dart:convert';

import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        receiveDataWhenStatusError: true,
        baseUrl: "https://midadeacademy.com/api/v1/",

        // maxRedirects: 00,
        // connectTimeout:60* 1000,
        // receiveTimeout:60* 1000,
      ),
    );
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
    };

    return await dio.get(
      url,
      queryParameters: query,
    );
  }

  static Future<Response> postData({
    required String url,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
  }) async {
    dio.options.headers = {
      'APIKEY': 'VjrUsuCGrl7iGH3bkZs3JJjF7cgdY7YU',
      'APILang': 'ar',
      'X-Requested-With': 'XMLHttpRequest'
    };
    return dio.post(
      url,
      queryParameters: query,
      data: json.encode(data),
    );
  }

  static Future<Response> putData({
    required String url,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
  }) async {
    dio.options.headers = {
      'APIKEY': 'VjrUsuCGrl7iGH3bkZs3JJjF7cgdY7YU',
      'APILang': 'ar',
      'X-Requested-With': 'XMLHttpRequest'
    };

    return dio.put(
      url,
      queryParameters: query,
      data: data,
    );
  }
}
