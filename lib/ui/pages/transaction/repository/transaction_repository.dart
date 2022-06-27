import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:wasser_app/core/network/api_endpoint.dart';
import 'package:wasser_app/core/network/api_provider.dart';
import 'package:wasser_app/ui/pages/transaction/model/transaksi_list_response.dart';

class TransactionRepository {
  Future<ListTransaksiResponse> transactionList() async {
    try {
      final responseJson = await ApiProvider.dio.get(
        ApiEndPoint.transaksi,
      );

      if (responseJson.statusCode == 200) {
        return ListTransaksiResponse.fromJson(json.decode(responseJson.data));
      } else {
        return ListTransaksiResponse.fromJson(json.decode(responseJson.data));
      }
    } on DioError catch (error) {
      final response =
          ListTransaksiResponse.fromJson(json.decode(error.response?.data));
      return response;
    }
  }
}
