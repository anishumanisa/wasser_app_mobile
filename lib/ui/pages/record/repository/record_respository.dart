import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:wasser_app/core/network/api_endpoint.dart';
import 'package:wasser_app/core/network/api_provider.dart';
import 'package:wasser_app/ui/pages/record/model/pencatatan_response.dart';

class RecordRepository {
  Future<PencatatanResponse> recordList() async {
    try {
      final responseJson = await ApiProvider.dio.get(
        ApiEndPoint.record,
      );

      if (responseJson.statusCode == 200) {
        return PencatatanResponse.fromJson(json.decode(responseJson.data));
      } else {
        return PencatatanResponse.fromJson(json.decode(responseJson.data));
      }
    } on DioError catch (error) {
      final response =
          PencatatanResponse.fromJson(json.decode(error.response?.data));
      return response;
    }
  }
}
