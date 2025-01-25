import 'dart:io';

import 'package:dio/dio.dart';

class TokenInterceptor extends Interceptor {
  TokenInterceptor({required this.token, required this.onInvalidToken});

  final String token;
  final void Function() onInvalidToken;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers[HttpHeaders.authorizationHeader] = "Bearer $token";

    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 498) onInvalidToken();

    super.onError(err, handler);
  }
}
