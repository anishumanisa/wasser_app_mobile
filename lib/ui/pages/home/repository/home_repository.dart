import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:wasser_app/core/network/api_endpoint.dart';
import 'package:wasser_app/core/network/api_provider.dart';
import 'package:wasser_app/core/utils/share_pref.dart';
import 'package:wasser_app/ui/pages/home/model/list_transaksi_response.dart';
import 'package:wasser_app/ui/pages/home/model/saldo_response.dart';

class HomeRepository {
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

  Future<SaldoKasResponse> cashFlow() async {
    try {
      final responseJson = await ApiProvider.dio.get(
        ApiEndPoint.saldo,
      );

      if (responseJson.statusCode == 200) {
        return SaldoKasResponse.fromJson(json.decode(responseJson.data));
      } else {
        return SaldoKasResponse.fromJson(json.decode(responseJson.data));
      }
    } on DioError catch (error) {
      final response =
          SaldoKasResponse.fromJson(json.decode(error.response?.data));
      return response;
    }
  }

  String? get userMember => SharePref.getUser();
}
