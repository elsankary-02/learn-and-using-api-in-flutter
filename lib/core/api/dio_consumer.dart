import 'package:dio/dio.dart';
import 'package:learn_api_in_flutter/core/api/api_consuomer.dart';
import 'package:learn_api_in_flutter/core/error/server_execption.dart';

class DioConsumer extends ApiConsuomer {
  final Dio dio;

  DioConsumer({required this.dio}) {
    dio.options.baseUrl = "write {baseUrl}";
    dio.interceptors.add(LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: false,
      responseHeader: true,
      responseBody: false,
      error: true,
    ));
  }
  @override
  Future delete(String path,
      {Object? data, Map<String, dynamic>? queryparameters}) async {
    try {
      final response =
          await dio.delete(path, data: data, queryParameters: queryparameters);
      return response.data;
    } on DioException catch (e) {
      errorDioHandelling(e);
    }
  }

  @override
  Future get(String path,
      {Object? data, Map<String, dynamic>? queryparameters}) async {
    try {
      final response =
          await dio.get(path, data: data, queryParameters: queryparameters);
      return response.data;
    } on DioException catch (e) {
      errorDioHandelling(e);
    }
  }

  @override
  Future patch(String path,
      {Object? data, Map<String, dynamic>? queryparameters}) async {
    try {
      final response =
          await dio.patch(path, data: data, queryParameters: queryparameters);
      return response.data;
    } on DioException catch (e) {
      errorDioHandelling(e);
    }
  }

  @override
  Future post(String path,
      {Object? data, Map<String, dynamic>? queryparameters}) async {
    try {
      final response =
          await dio.post(path, data: data, queryParameters: queryparameters);
      return response.data;
    } on DioException catch (e) {
      errorDioHandelling(e);
    }
  }
}
