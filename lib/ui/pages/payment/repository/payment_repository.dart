import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:wasser_app/core/network/api_endpoint.dart';
import 'package:wasser_app/core/network/api_provider.dart';
import 'package:wasser_app/ui/pages/payment/model/payment_list_response.dart';

class PaymentRepository {
  Future<PaymentListResponse> transactionList() async {
    try {
      final responseJson = await ApiProvider.dio.get(
        ApiEndPoint.payment,
      );

      if (responseJson.statusCode == 200) {
        return PaymentListResponse.fromJson(json.decode(responseJson.data));
      } else {
        return PaymentListResponse.fromJson(json.decode(responseJson.data));
      }
    } on DioError catch (error) {
      final response =
          PaymentListResponse.fromJson(json.decode(error.response?.data));
      return response;
    }
  }
}
