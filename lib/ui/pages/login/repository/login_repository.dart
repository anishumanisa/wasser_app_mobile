import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:wasser_app/core/network/api_endpoint.dart';
import 'package:wasser_app/core/network/api_provider.dart';
import 'package:wasser_app/core/utils/share_pref.dart';
import 'package:wasser_app/ui/pages/login/model/login_response.dart';

class LoginRepository {
  Future<LoginResponse> login(String email, String password) async {
    try {
      final responseJson = await ApiProvider.dio.post(
        ApiEndPoint.login,
        data: {'email': email, 'password': password},
      );

      if (responseJson.statusCode == 200) {
        return LoginResponse.fromJson(json.decode(responseJson.data));
      } else {
        return LoginResponse.fromJson(json.decode(responseJson.data));
      }
    } on DioError catch (error) {
      final response =
          LoginResponse.fromJson(json.decode(error.response?.data));
      return response;
    }
  }

  Future setUserMember(String? user) async {
    return SharePref.setUser(user ?? '');
  }

  Future setToken(String? userToken) async {
    return SharePref.setToken(userToken ?? '');
  }
}
