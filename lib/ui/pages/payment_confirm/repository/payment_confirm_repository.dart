import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:wasser_app/core/network/api_endpoint.dart';
import 'package:wasser_app/core/network/api_provider.dart';
import 'package:wasser_app/ui/pages/payment_confirm/model/payment_confirm_response.dart';

class PaymentConfirmRepository {
  Future<PaymentConfirmResponse> paymentConfirm(
      {required String paymentId}) async {
    try {
      final responseJson = await ApiProvider.dio.get(
        ApiEndPoint.paymentDetail + paymentId,
      );

      if (responseJson.statusCode == 200) {
        return PaymentConfirmResponse.fromJson(json.decode(responseJson.data));
      } else {
        return PaymentConfirmResponse.fromJson(json.decode(responseJson.data));
      }
    } on DioError catch (error) {
      final response =
          PaymentConfirmResponse.fromJson(json.decode(error.response?.data));
      return response;
    }
  }
}
