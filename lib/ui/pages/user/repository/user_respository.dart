import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:wasser_app/core/network/api_endpoint.dart';
import 'package:wasser_app/core/network/api_provider.dart';
import 'package:wasser_app/ui/pages/user/model/user_list_response.dart';

class UserRepository {
  Future<UserListResponse> userList() async {
    try {
      final responseJson = await ApiProvider.dio.get(
        ApiEndPoint.userList,
      );

      if (responseJson.statusCode == 200) {
        return UserListResponse.fromJson(json.decode(responseJson.data));
      } else {
        return UserListResponse.fromJson(json.decode(responseJson.data));
      }
    } on DioError catch (error) {
      final response =
          UserListResponse.fromJson(json.decode(error.response?.data));
      return response;
    }
  }
}
