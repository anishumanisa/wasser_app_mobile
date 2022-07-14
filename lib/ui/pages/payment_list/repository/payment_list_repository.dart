import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:wasser_app/core/network/api_endpoint.dart';
import 'package:wasser_app/core/network/api_provider.dart';
import 'package:wasser_app/ui/pages/payment_list/model/detail_pembayaran_response.dart';

class PaymentListRepository {
  Future<ListDetailPembayaranResponse> paymentList({required String id}) async {
    try {
      final responseJson = await ApiProvider.dio.get(
        ApiEndPoint.payment + id,
      );

      if (responseJson.statusCode == 200) {
        return ListDetailPembayaranResponse.fromJson(
            json.decode(responseJson.data));
      } else {
        return ListDetailPembayaranResponse.fromJson(
            json.decode(responseJson.data));
      }
    } on DioError catch (error) {
      final response = ListDetailPembayaranResponse.fromJson(
          json.decode(error.response?.data));
      return response;
    }
  }
}
