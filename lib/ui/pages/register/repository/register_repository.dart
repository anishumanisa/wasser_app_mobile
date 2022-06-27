import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:wasser_app/core/network/api_endpoint.dart';
import 'package:wasser_app/core/network/api_provider.dart';
import 'package:wasser_app/ui/pages/register/model/register_response.dart';

class RegisterRepository {
  Future<RegisterResponse> register(
    String name,
    String email,
    String password,
    String noTelp,
    String alamat,
    String jk,
    String tglLahir,
    String avatar,
    String role,
    int wilayahId,
    int noPelanggan,
  ) async {
    try {
      final responseJson = await ApiProvider.dio.post(
        ApiEndPoint.register,
        data: {
          'name': name,
          'email': email,
          'password': password,
          'no_telp': noTelp,
          'alamat': alamat,
          'jk': jk,
          'tgl_lahir': tglLahir,
          'avatar': avatar,
          'role': role,
          'wilayah_id': wilayahId,
          'no_pelanggan': noPelanggan,
        },
      );

      if (responseJson.statusCode == 200) {
        return RegisterResponse.fromJson(json.decode(responseJson.data));
      } else {
        return RegisterResponse.fromJson(json.decode(responseJson.data));
      }
    } on DioError catch (error) {
      final response =
          RegisterResponse.fromJson(json.decode(error.response?.data));
      return response;
    }
  }
}
