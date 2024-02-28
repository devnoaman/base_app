import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:base/network/endpoints.dart';
import 'package:base/shared/shared.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dioProvider = Provider<Dio>((ref) {
  var dio = Dio();
  dio.options = BaseOptions(
    // definition of our base URL as global path;
    baseUrl: Endpoints.baseURL,
    receiveTimeout: 15.seconds, // 15 seconds
    connectTimeout: 15.seconds,
    sendTimeout: 15.seconds,
  );
  // showing debugs only in debug mode , not in production
  if (kDebugMode) {
    dio.interceptors.addAll({
      AwesomeDioInterceptor(
        logRequestTimeout: false,
        logRequestHeaders: false,
        logResponseHeaders: false,
      ),
    });
  }
  return dio;
});
