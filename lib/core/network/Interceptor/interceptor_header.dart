import 'dart:io';

import 'package:dio/dio.dart';
import 'package:wasser_app/core/network/Interceptor/interceptor_constants.dart';
import 'package:wasser_app/core/utils/share_pref.dart';

InterceptorsWrapper interceptorsHeader() {
  return InterceptorsWrapper(
    onRequest: (optionRequest, handler) async {
      optionRequest.headers[InterceptorConstant.device] = Platform.isAndroid
          ? InterceptorConstant.android
          : InterceptorConstant.ios;
      optionRequest.headers[HttpHeaders.acceptHeader] = ContentType.json;

      // set token from local data
      if (SharePref.getToken().isNotEmpty) {
        optionRequest.headers[HttpHeaders.authorizationHeader] =
            'Bearer ' + SharePref.getToken();
      }

      return handler.next(optionRequest);
    },
    onResponse: (e, handler) {
      return handler.next(e);
    },
  );
}
