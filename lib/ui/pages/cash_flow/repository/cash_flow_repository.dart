import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:wasser_app/core/network/api_endpoint.dart';
import 'package:wasser_app/core/network/api_provider.dart';
import 'package:wasser_app/ui/pages/cash_flow/model/saldo_response.dart';

class CashFlowRepository {
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
}
