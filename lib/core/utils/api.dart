import 'package:dio/dio.dart';

class Api {
  final Dio _dio = Dio();

  Future<dynamic> get({required String url, String? token}) async {
    Options options = Options(headers: {});
    if (token != null) {
      options.headers!.addAll({'Authorization': 'Bearer $token'});
    }
    try {
      Response response = await _dio.get(url, options: options);
      return response.data;
    } on DioException catch (e) {
      throw e;
    }
  }

  Future<dynamic> post({
    required String url,
    required dynamic body,
    String? token,
  }) async {
    Options options = Options(headers: {});
    if (token != null) {
      options.headers!.addAll({'Authorization': 'Bearer $token'});
    }
    try {
      Response response = await _dio.post(url, data: body, options: options);
      return response.data;
    } on DioException catch (e) {
      throw e;
    }
  }

  Future<dynamic> put({
    required String url,
    required dynamic body,
    String? token,
  }) async {
    Options options =
        Options(headers: {'Content-Type': 'application/x-www-form-urlencoded'});
    if (token != null) {
      options.headers!.addAll({'Authorization': 'Bearer $token'});
    }
    try {
      Response response = await _dio.put(url, data: body, options: options);
      return response.data;
    } on DioException catch (e) {
      throw e;
    }
  }

  Future<dynamic> delete({
    required String url,
    String? token,
  }) async {
    Options options = Options(headers: {});
    if (token != null) {
      options.headers!.addAll({'Authorization': 'Bearer $token'});
    }
    try {
      Response response = await _dio.delete(url, options: options);
      return response.data;
    } on DioException catch (e) {
      throw e;
    }
  }
}
