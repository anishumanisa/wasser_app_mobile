import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:wasser_app/core/network/api_endpoint.dart';
import 'package:wasser_app/core/network/api_provider.dart';
import 'package:wasser_app/ui/pages/input_meter/model/create_payment_response.dart';

class InputMeterRepository {
  Future<CreatePaymentResponse> inputMeter(
      {required int meteranAwal,
      required int meteranAkhir,
      required String keterangan,
      required String status,
      required int userId}) async {
    try {
      final responseJson =
          await ApiProvider.dio.post(ApiEndPoint.payment, data: {
        'meteran_awal': meteranAwal,
        'meteran_akhir': meteranAkhir,
        'keterangan': keterangan,
        'status': status,
        'user_id': userId
      });

      if (responseJson.statusCode == 200) {
        return CreatePaymentResponse.fromJson(json.decode(responseJson.data));
      } else {
        return CreatePaymentResponse.fromJson(json.decode(responseJson.data));
      }
    } on DioError catch (error) {
      final response =
          CreatePaymentResponse.fromJson(json.decode(error.response?.data));
      return response;
    }
  }
}
