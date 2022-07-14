import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:wasser_app/core/network/api_endpoint.dart';
import 'package:wasser_app/core/network/api_provider.dart';
import 'package:wasser_app/ui/pages/cash_flow_manage/model/cash_flow_manage_response.dart';

class CashFlowManageRepository {
  Future<CashFlowManageResponse> createCashFlow(
      {required String? type,
      required int? jumlah,
      required String? keterangan}) async {
    try {
      final responseJson = await ApiProvider.dio.post(ApiEndPoint.saldo,
          data: {'type': type, 'jumlah': jumlah, 'keterangan': keterangan});

      if (responseJson.statusCode == 200) {
        return CashFlowManageResponse.fromJson(json.decode(responseJson.data));
      } else {
        return CashFlowManageResponse.fromJson(json.decode(responseJson.data));
      }
    } on DioError catch (error) {
      final response =
          CashFlowManageResponse.fromJson(json.decode(error.response?.data));
      return response;
    }
  }
}
