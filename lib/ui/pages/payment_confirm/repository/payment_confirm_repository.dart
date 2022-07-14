import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:wasser_app/core/network/api_endpoint.dart';
import 'package:wasser_app/core/network/api_provider.dart';
import 'package:wasser_app/ui/pages/payment_confirm/model/create_transaction_response.dart';
import 'package:wasser_app/ui/pages/payment_confirm/model/payment_confirm_response.dart';

class PaymentConfirmRepository {
  Future<PaymentConfirmResponse> getPaymentConfirm(
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

  Future<CreateTransactionResponse> createTransaction({
    required int total,
    required int bayar,
    required int denda,
    required int pembayaranId,
    required String method,
    required String keterangan,
    required int userId,
  }) async {
    try {
      final responseJson =
          await ApiProvider.dio.post(ApiEndPoint.transaksi, data: {
        'total': total,
        'bayar': bayar,
        'denda': denda,
        'pembayaran_id': pembayaranId,
        'method': method,
        'keterangan': keterangan,
        'user_id': userId,
      });

      if (responseJson.statusCode == 200) {
        return CreateTransactionResponse.fromJson(
            json.decode(responseJson.data));
      } else {
        return CreateTransactionResponse.fromJson(
            json.decode(responseJson.data));
      }
    } on DioError catch (error) {
      final response =
          CreateTransactionResponse.fromJson(json.decode(error.response?.data));
      return response;
    }
  }
}
