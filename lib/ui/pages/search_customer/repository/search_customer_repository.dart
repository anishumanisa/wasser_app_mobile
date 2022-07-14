import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:wasser_app/core/network/api_endpoint.dart';
import 'package:wasser_app/core/network/api_provider.dart';
import 'package:wasser_app/ui/pages/search_customer/model/search_customer_response.dart';

class SearchCustomerRepository {
  Future<SearchCustomerResponse> searchCustomer(
      {required int customerNo}) async {
    try {
      final responseJson = await ApiProvider.dio.get(
        ApiEndPoint.paymentCustomer + customerNo.toString(),
      );

      if (responseJson.statusCode == 200) {
        return SearchCustomerResponse.fromJson(json.decode(responseJson.data));
      } else {
        return SearchCustomerResponse.fromJson(json.decode(responseJson.data));
      }
    } on DioError catch (error) {
      final response =
          SearchCustomerResponse.fromJson(json.decode(error.response?.data));
      return response;
    }
  }
}
