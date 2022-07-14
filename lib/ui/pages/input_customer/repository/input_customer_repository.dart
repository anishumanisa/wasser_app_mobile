import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:wasser_app/core/network/api_endpoint.dart';
import 'package:wasser_app/core/network/api_provider.dart';
import 'package:wasser_app/ui/pages/input_customer/model/input_customer_response.dart';
import 'package:wasser_app/ui/pages/input_customer/model/wilayah_response.dart';

class InputCustomerRepository {
  Future<WilayahResponse> getWilayah() async {
    try {
      final responseJson = await ApiProvider.dio.get(
        ApiEndPoint.wilayah,
      );

      if (responseJson.statusCode == 200) {
        return WilayahResponse.fromJson(json.decode(responseJson.data));
      } else {
        return WilayahResponse.fromJson(json.decode(responseJson.data));
      }
    } on DioError catch (error) {
      final response =
          WilayahResponse.fromJson(json.decode(error.response?.data));
      return response;
    }
  }

  Future<InputCustomerResponse> inputCustomer({
    required String name,
    required String email,
    required String noHp,
    required String gender,
    required String date,
    required String address,
    required int region,
    required String password,
    required String role,
    required int noCustomer,
  }) async {
    try {
      final responseJson =
          await ApiProvider.dio.post(ApiEndPoint.register, data: {
        'name': name,
        'email': email,
        'no_telp': noHp,
        'alamat': address,
        'jk': gender,
        'tgl_lahir': date,
        'role': role,
        'wilayah_id': region,
        'password': password,
        'no_pelanggan': noCustomer,
      });

      if (responseJson.statusCode == 200) {
        return InputCustomerResponse.fromJson(json.decode(responseJson.data));
      } else {
        return InputCustomerResponse.fromJson(json.decode(responseJson.data));
      }
    } on DioError catch (error) {
      final response =
          InputCustomerResponse.fromJson(json.decode(error.response?.data));
      return response;
    }
  }
}
