import 'package:dio/dio.dart';
import 'package:wasser_app/core/network/Interceptor/interceptor_header.dart';
import 'package:wasser_app/core/network/Interceptor/loggin_interceptor.dart';

class ApiProvider {
  static final _dio = Dio();

  static Future<void> init() async {
    _dio.options
      ..followRedirects = false
      ..responseType = ResponseType.plain
      ..connectTimeout = 60000
      ..receiveTimeout = 50000;
    _dio.interceptors.add(interceptorsHeader());
    _dio.interceptors.add(Logging());
  }

  static Dio get dio {
    return _dio;
  }
}
