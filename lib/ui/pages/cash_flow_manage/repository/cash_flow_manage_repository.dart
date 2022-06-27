import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:wasser_app/core/network/api_endpoint.dart';
import 'package:wasser_app/core/network/api_provider.dart';
import 'package:wasser_app/ui/pages/cash_flow/model/saldo_response.dart';

class CashFlowManageRepository {
  Future<SaldoResponse> cashFlow() async {
    try {
      final responseJson = await ApiProvider.dio.get(
        ApiEndPoint.saldo,
      );

      if (responseJson.statusCode == 200) {
        return SaldoResponse.fromJson(json.decode(responseJson.data));
      } else {
        return SaldoResponse.fromJson(json.decode(responseJson.data));
      }
    } on DioError catch (error) {
      final response =
          SaldoResponse.fromJson(json.decode(error.response?.data));
      return response;
    }
  }
}
