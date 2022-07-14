import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:wasser_app/core/network/api_endpoint.dart';
import 'package:wasser_app/core/network/api_provider.dart';
import 'package:wasser_app/ui/pages/customer/model/customer_list_response.dart';

class CustomerRepository {
  Future<CustomerListResponse> customerList() async {
    try {
      final responseJson = await ApiProvider.dio.get(
        ApiEndPoint.userRole + 'customer',
      );

      if (responseJson.statusCode == 200) {
        return CustomerListResponse.fromJson(json.decode(responseJson.data));
      } else {
        return CustomerListResponse.fromJson(json.decode(responseJson.data));
      }
    } on DioError catch (error) {
      final response =
          CustomerListResponse.fromJson(json.decode(error.response?.data));
      return response;
    }
  }
}
