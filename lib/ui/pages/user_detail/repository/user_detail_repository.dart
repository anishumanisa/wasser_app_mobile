import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:wasser_app/core/network/api_endpoint.dart';
import 'package:wasser_app/core/network/api_provider.dart';
import 'package:wasser_app/ui/pages/user_detail/model/delete_user_response.dart';

class UserDetailRepository {
  Future<DeleteUserResponse> deleteUser({required String id}) async {
    try {
      final responseJson = await ApiProvider.dio.delete(
        ApiEndPoint.deleteUser + id,
      );

      if (responseJson.statusCode == 200) {
        return DeleteUserResponse.fromJson(json.decode(responseJson.data));
      } else {
        return DeleteUserResponse.fromJson(json.decode(responseJson.data));
      }
    } on DioError catch (error) {
      final response =
          DeleteUserResponse.fromJson(json.decode(error.response?.data));
      return response;
    }
  }
}
