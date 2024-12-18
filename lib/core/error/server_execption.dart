import 'package:dio/dio.dart';
import 'package:learn_api_in_flutter/core/error/error_model.dart';

class ServerExecption implements Exception {
  final ErrorModel errorModel;

  ServerExecption({required this.errorModel});
}

  void errorDioHandelling(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        throw ServerExecption(
          errorModel: ErrorModel.fromjson(e.response!.data),
        );
      case DioExceptionType.sendTimeout:
        throw ServerExecption(
          errorModel: ErrorModel.fromjson(e.response!.data),
        );
      case DioExceptionType.receiveTimeout:
        throw ServerExecption(
          errorModel: ErrorModel.fromjson(e.response!.data),
        );
      case DioExceptionType.badCertificate:
        throw ServerExecption(
          errorModel: ErrorModel.fromjson(e.response!.data),
        );
      case DioExceptionType.cancel:
        throw ServerExecption(
          errorModel: ErrorModel.fromjson(e.response!.data),
        );
      case DioExceptionType.connectionError:
        throw ServerExecption(
          errorModel: ErrorModel.fromjson(e.response!.data),
        );
      case DioExceptionType.unknown:
        throw ServerExecption(
          errorModel: ErrorModel.fromjson(e.response!.data),
        );
      case DioExceptionType.badResponse:
        switch (e.response!.statusCode) {
          case 400:
            throw ServerExecption(
              errorModel: ErrorModel.fromjson(e.response!.data),
            );
          case 403:
            throw ServerExecption(
              errorModel: ErrorModel.fromjson(e.response!.data),
            );
          case 404:
            throw ServerExecption(
              errorModel: ErrorModel.fromjson(e.response!.data),
            );
          case 409:
            throw ServerExecption(
              errorModel: ErrorModel.fromjson(e.response!.data),
            );
          case 422:
            throw ServerExecption(
              errorModel: ErrorModel.fromjson(e.response!.data),
            );
          case 504:
            throw ServerExecption(
              errorModel: ErrorModel.fromjson(e.response!.data),
            );
        }
    }
  }